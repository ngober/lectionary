import os.path
import re
import itertools
import yaml
import pathlib
import hashlib

import pyphen

from SCons.Builder import Builder
from SCons.Scanner import Scanner

from util import get_basename

def generate_lilypond(source, target, env, for_signature):
    target_name = os.path.splitext(str(target[0]))[0]
    return f'lilypond --pspdfopt=TeX -o {target_name} {source[0]!s}'

def scan_lilypond(node, env, path, arg=None):
    contents = node.get_text_contents()
    return re.findall(r'\\include "(.*)"', contents)

def render_wrapper(target, source, env):
    template_name = pathlib.Path(str(source[0]))
    render_data = {
        'calendar': env['calendar_events'],
        'musicpages': [str(f) for f in source[1:]]
    }
    env.Render(target[0], template_name, render_data)

def parse_yaml(fname):
    with open(fname, 'rt') as rfp:
        return yaml.safe_load(rfp)

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
        return prefix + re.sub('-', LY_HYPEN, overridden) + suffix

    splitter = pyphen.Pyphen(lang='en_US')
    return prefix + splitter.inserted(inner_word, hyphen=LY_HYPEN) + suffix

def filter_quoted_hyphenate(word):
    if QUOTED_WORD.match(word):
        return word
    return PUNCTUATED_WORD.sub(hyphenate, word)

UNQUOTED_WORD = re.compile(r'(?:(?<=(\\")|.[^"])|^)\b([a-zA-Z\']+)\b[;:,.!]?(?=(\\")|[^"]|$)')
def process_verse(verse):
    lines = verse.splitlines()
    return '\n'.join(' '.join(map(filter_quoted_hyphenate, line.split())) if not line.strip().startswith('\\') else line for line in lines)

def render_single(target, source, env):
    source_name = pathlib.Path(str(source[0]))
    tag = hashlib.sha256(source_name.stem.encode()).hexdigest()
    tag = tag.translate(str.maketrans("0123456789", "ghijklmnop"))

    data = parse_yaml(source_name)
    num_verses = max([len(section['lyrics']) for section in data['sections']])

    for section in data['sections']:
        section['lyrics'] = [process_verse(verse) for verse in section['lyrics']]
        if 'time_signature' in section:
            measured = zip(itertools.cycle(section['time_signature']), section['soprano'].split('|'))
            section['soprano'] = '|'.join(f' \\time {ts} {line}' for ts, line in measured)

    env.Render(target[0], 'templates/hymn.ly.tmp', { "tag": tag, "num_verses": num_verses, **data })

def add_musicpages(target, source, env):
    data_src_name = [f'body/{evt["basename"]}.yaml' for evt in env['calendar_events']]
    data = map(parse_yaml, data_src_name)
    source.extend(sorted(set(f'music/{get_basename(mus)}.ly' for mus in itertools.chain(*((evt.get('musicpages') or []) for evt in data)))))
    return target, source

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
        suffix='.yaml',
        src_suffix='.ly'
    )

    env['BUILDERS']['Lilypond'] = lilypond_builder
    env['BUILDERS']['MusicXML'] = musicxml_converter
    env['BUILDERS']['UncompMusicXML'] = uncomp_musicxml_converter
    env['BUILDERS']['LilypondWrapper']  = lilypond_wrapper
    env['BUILDERS']['LilypondSingle']  = lilypond_single

def exists(env):
    return True
