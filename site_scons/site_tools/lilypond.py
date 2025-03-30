import os.path
import re
import itertools
import yaml
import pathlib

from SCons.Builder import Builder
from SCons.Scanner import Scanner

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
        'musicpages': [pathlib.Path(str(f)).stem for f in source[1:]]
    }
    env.Render(target[0], template_name, render_data)

def parse_yaml(fname):
    with open(fname, 'rt') as rfp:
        return yaml.safe_load(rfp)

def add_musicpages(target, source, env):
    data_src_name = [f'data/{evt["basename"]}.yaml' for evt in env['calendar_events']]
    data = map(parse_yaml, data_src_name)
    source.extend(sorted(f'music/{mus}.ly' for mus in itertools.chain(*((evt.get('musicpages') or {}).values() for evt in data))))
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

    env['BUILDERS']['Lilypond'] = lilypond_builder
    env['BUILDERS']['MusicXML'] = musicxml_converter
    env['BUILDERS']['UncompMusicXML'] = uncomp_musicxml_converter
    env['BUILDERS']['LilypondWrapper']  = lilypond_wrapper

def exists(env):
    return True
