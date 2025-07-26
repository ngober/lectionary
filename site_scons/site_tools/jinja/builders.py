import os
import itertools
import traceback
import pathlib
import contextlib
import sys
import re

import SCons.Scanner.LaTeX
from SCons.Builder import Builder
from SCons.Scanner import Scanner, FindPathDirs

from .esv_api import get_text
from util import noisy, get_basename, parse_yaml, filter_calendar
import texify

def get_first_with_ext(source, ext):
    return str(next(filter(lambda s: str(s).endswith(ext), source)))

def get_tex_from_yaml(target, source, env):
    return target, [str(pathlib.Path(str(s)).with_suffix('.tex')) if str(s).endswith('.yaml') else s for s in source]

def add_template_name(target, source, env):
    source_basenames = [pathlib.Path(str(s)).stem for s in source]

    season_map = dict(itertools.chain.from_iterable([(w['basename'], season['season']) for w in season['weeks']] for season in env['calendar_events']))

    templates = [f'../templates/{season_map[s]}.tex.tmp' for s in source_basenames]
    templates = [temp for temp in templates if os.path.exists(temp)]
    if not templates:
        templates = ['../templates/body.tex.tmp']
    source.extend(templates)
    return target, source

def reading_make_dict(a):
    if not isinstance(a, dict):
        a = { 'address': a }
    return a

def augment_readings(readings, draft=False):
    readings = [reading_make_dict(a) for a in readings]
    if draft:
        texts = [['\lipsum[2]'] for _ in readings]
    else:
        texts = get_text([a['address'] for a in readings])
    return list(itertools.starmap(texify.reading_join_text, zip(readings, texts)))

def normalize_yaml(parsed, draft=False):
    readings = augment_readings(parsed['readings'], draft)
    if 'musicpages' in parsed:
        parsed['musicpages'] = { name: get_basename(name) for name in (parsed.get('musicpages') or []) }
    parsed['presong_readings'] = readings[:len(readings)//2]
    parsed['postsong_readings'] = readings[len(readings)//2:]
    parsed['lordsprayer'] = parsed.get('lordsprayer', True)
    return parsed

@noisy()
def render_body(target, source, env):
    template_name = pathlib.Path(get_first_with_ext(source, '.tex.tmp'))
    data_src_name = pathlib.Path(get_first_with_ext(source, '.yaml'))
    data = normalize_yaml(parse_yaml(data_src_name), env['DRAFT'])
    env.Render(target[0], template_name, data)

@noisy()
def render_wrapper(target, source, env):
    template_name = pathlib.Path(get_first_with_ext(source, '.tex.tmp'))
    hymnal_name = pathlib.Path(get_first_with_ext(source, '.pdf'))
    source_basenames = [pathlib.Path(str(s)).stem for s in source if str(s).endswith('.tex')]
    render_data = {
        'calendar': filter_calendar(env['calendar_events'], *source_basenames),
        'hymnal_name' : os.path.splitext(os.path.basename(str(hymnal_name)))[0]
    }
    env.Render(target[0], template_name, render_data)

JINJA_EXTEND = re.compile(r'^{%\s+extends\s+([\'"])(\S+)\1\s+%}$', re.M)
def template_scanner(node, env, path, arg=None):
    includes = [m[1] for m in JINJA_EXTEND.findall(node.get_text_contents())]
    deps = (os.path.join(str(d), inc) for d,inc in itertools.product(path, includes))
    return env.File(list(filter(os.path.exists, deps)))

def WrapperBuilder():
    return Builder(
        action=render_wrapper,
        suffix='.tex',
        src_suffix='.yaml',
        target_scanner=SCons.Scanner.LaTeX.LaTeXScanner(),
        emitter=get_tex_from_yaml
    )

def BodyBuilder():
    return Builder(
        action=render_body,
        suffix='.tex',
        src_suffix='.yaml',
        target_scanner=SCons.Scanner.LaTeX.LaTeXScanner(),
        emitter=add_template_name
    )

def TemplateScanner():
    return Scanner(
        function=template_scanner,
        skeys=['.tmp'],
        path_function=FindPathDirs('TEMPLATEDIR')
    )
