import os.path
import re
import itertools
import pathlib
import hashlib

import pyphen

from SCons.Builder import Builder
from SCons.Scanner import Scanner

from util import get_basename, parse_yaml, make_dict_with

def get_first_with_ext(source, ext):
    return str(next(filter(lambda s: str(s).endswith(ext), source)))

def generate_lilypond(source, target, env, for_signature):
    target_name = os.path.splitext(str(target[0]))[0]
    return f'lilypond --pspdfopt=TeX -o {target_name} {source[0]!s}'

def scan_lilypond(node, env, path, arg=None):
    contents = node.get_text_contents()
    return re.findall(r'\\include "(.*)"', contents)

def render_wrapper(target, source, env):
    template_name = pathlib.Path(get_first_with_ext(source, '.tmp'))
    render_data = {
        'musicpages': [str(f) for f in source if str(f).endswith('.ly')]
    }
    env.Render(target[0], template_name, render_data)

def syllable_quote_escape(syl):
    escaped = re.sub('"', r'\\"', syl)
    return f'"{escaped}"'

def split_by_positions(seq, positions):
    windows = list(positions)
    if not windows:
        return [seq]
    windows = itertools.chain(((None, positions[0]),), itertools.pairwise(positions), ((positions[-1], None),))
    return [seq[slice(*locs)] for locs in windows]

OVERRIDES = dict(map(lambda x: (re.sub('-', '', x), x), pathlib.Path('hyphen.txt').read_text().splitlines()))
QUOTED_WORD = re.compile(r'"(?:[^"\\]|\\.)*"')
PUNCTUATED_WORD = re.compile(r'("?)\b([a-zA-Z\']*)\b([;:,.!"]*)')
LY_HYPEN = ' -- '
def hyphenate(match):
    prefix = match.group(1)
    inner_word = match.group(2)
    suffix = match.group(3)

    sentinel = object()
    overridden = OVERRIDES.get(inner_word.lower(), sentinel)
    if overridden is not sentinel:
        positions = [m.start(0) - idx for idx,m in enumerate(re.finditer('-', overridden))]
    else:
        positions = pyphen.Pyphen(lang='en_US').positions(inner_word)

    inner_word_parts = split_by_positions(inner_word, positions)

    inner_word_parts[0] = prefix + inner_word_parts[0]
    inner_word_parts[-1] = inner_word_parts[-1] + suffix

    inner_word_parts = [syllable_quote_escape(syl) if '"' in syl else syl for syl in inner_word_parts]

    return LY_HYPEN.join(inner_word_parts)

def filter_quoted_hyphenate(word):
    if QUOTED_WORD.match(word):
        return word
    return PUNCTUATED_WORD.sub(hyphenate, word)

UNQUOTED_WORD = re.compile(r'(?:(?<=(\\")|.[^"])|^)\b([a-zA-Z\']+)\b[;:,.!]?(?=(\\")|[^"]|$)')
def process_verse(verse):
    verse = { 'bind': 'soprano', **make_dict_with(verse, 'text') }
    lines = verse['text'].splitlines()
    verse['text'] = '\n'.join(' '.join(map(filter_quoted_hyphenate, line.split())) if not line.strip().startswith('\\') else line for line in lines)
    return verse

def bind_lyrics_to_voice(tag, all_sections):
    for leader, follower in itertools.pairwise(all_sections):
        lyrics = []
        for leader_verse, follower_verse in zip(leader['lyrics'], itertools.chain(follower['lyrics'], itertools.repeat({ 'bind': 'soprano' }))):
            if leader_verse['bind'] != follower_verse['bind']:
                *headwords, lastword = leader_verse['text'].split()
                leader_verse['text'] = ' '.join(itertools.chain(headwords, [f'\set associatedVoice = "{tag}{follower_verse["bind"].title()}"', lastword]))
    return all_sections

SOFTBREAK = '\\bar ""' # \\allowBreak
def insert_soft_breaks(part):
    *head, last = part.splitlines()
    head = [f'{l} {SOFTBREAK}' if not l.rstrip().endswith('|') else l for l in head]
    return '\n'.join(head + [last])

def time_signature_cycle(part, time_sigs):
    measured = zip(itertools.cycle(section['time_signature']), part.split('|'))
    return '|'.join(f' \\time {ts} {line}' for ts, line in measured)

def render_single(target, source, env):
    source_name = pathlib.Path(get_first_with_ext(source, '.yaml'))
    tag = hashlib.sha256(source_name.stem.encode()).hexdigest()
    tag = tag.translate(str.maketrans("0123456789", "ghijklmnop"))

    data = parse_yaml(source_name)
    num_verses = max([len(section['lyrics']) for section in data['sections']])

    for section in data['sections']:
        section['lyrics'] = [process_verse(verse) for verse in section['lyrics']]
        for part in ('soprano', 'alto', 'tenor', 'bass'):
            section[part] = insert_soft_breaks(section[part])
        if 'time_signature' in section:
            section['soprano'] = time_signature_cycle(section['soprano'], section['time_signature'])

    data['sections'] = bind_lyrics_to_voice(tag, data['sections'])
    env.Render(target[0], get_first_with_ext(source, '.tmp'), { "tag": tag, "num_verses": num_verses, **data })

def add_hymn_template(target, source, env):
    return target, source + ['$TEMPLATEDIR/hymn.ly.tmp']

def get_musicpages(yamlfile):
    data = parse_yaml(yamlfile)
    return [f'$MUSICDIR/{get_basename(mus)}.ly' for mus in (data.get('musicpages') or [])]

def add_musicpages(target, source, env):
    source = [get_musicpages(s) if s.endswith('.yaml') else s for s in map(str, source)]
    source = sorted(set(itertools.chain.from_iterable(source)))
    target.append(str(pathlib.Path(str(target[0])).with_suffix('.toc')))
    return target, ['$MUSICDIR/templates/hymnal.ly.tmp'] + source

def generate(env):
    env.Append(SCANNERS=Scanner(function=scan_lilypond, skeys=['.ly']))

    lilypond_builder = Builder(
        generator=generate_lilypond,
        suffix='.pdf',
        src_suffix='.ly'
    )

    musicxml_converter = Builder(
        action='musicxml2ly --no-beaming --no-page-layout --no-rest-positions --compressed --output=$TARGET $SOURCE',
        suffix='.ly',
        src_suffix='.mxl'
    )

    uncomp_musicxml_converter = Builder(
        action='musicxml2ly --no-beaming --no-page-layout --no-rest-positions --output=$TARGET $SOURCE',
        suffix='.ly',
        src_suffix='.mxl'
    )

    lilypond_wrapper = Builder(
        action=render_wrapper,
        suffix='.ly',
        src_suffix='.ly.tmp',
        emitter=add_musicpages
    )

    lilypond_single = Builder(
        action=render_single,
        suffix='.ly',
        src_suffix='.yaml',
        emitter=add_hymn_template
    )

    lilypond_debug = Builder(
        action=render_wrapper,
        suffix='.ly',
        src_suffix='.ly.tmp'
    )

    env['BUILDERS']['Lilypond'] = lilypond_builder
    env['BUILDERS']['MusicXML'] = musicxml_converter
    env['BUILDERS']['UncompMusicXML'] = uncomp_musicxml_converter
    env['BUILDERS']['LilypondWrapper']  = lilypond_wrapper
    env['BUILDERS']['LilypondSingle']  = lilypond_single
    env['BUILDERS']['LilypondDebug']  = lilypond_debug

def exists(env):
    return True
