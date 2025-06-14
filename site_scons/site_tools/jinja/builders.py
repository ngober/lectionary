import os
import itertools
import traceback
import pathlib
import contextlib
import sys

import SCons.Scanner.LaTeX
from SCons.Builder import Builder

from .esv_api import get_text
from util import noisy, get_basename, parse_yaml

def get_first_with_ext(source, ext):
    return str(next(filter(lambda s: str(s).endswith(ext), source)))

def add_template_name(target, source, env):
    target_name = pathlib.Path(str(target[0]))
    templates = [f'templates/{event_data.get("season", "body")}.tex.tmp' for event_data in env['calendar_events']]
    templates = [temp for temp in templates if os.path.exists(temp)]
    if not templates:
        templates = ['../templates/body.tex.tmp']
    source.extend(templates)
    return target, source

def augment_readings(readings, draft=False):
    def tolerate_dict(r):
        if isinstance(r, dict):
            return tolerate_dict(r['address'])
        if draft:
            address, text = r, ['\lipsum[2]']
        else:
            address, text = get_text(r)
        return { 'address': address, 'text': text }
    return list(map(tolerate_dict, readings))

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
    render_data = {
        'calendar': env['calendar_events'],
        'hymnal_name' : os.path.splitext(os.path.basename(str(hymnal_name)))[0]
    }
    env.Render(target[0], template_name, render_data)

def WrapperBuilder():
    return Builder(
        action=render_wrapper,
        suffix='.tex',
        src_suffix='.yaml',
        target_scanner=SCons.Scanner.LaTeX.LaTeXScanner()
    )

def BodyBuilder():
    return Builder(
        action=render_body,
        suffix='.tex',
        src_suffix='.yaml',
        target_scanner=SCons.Scanner.LaTeX.LaTeXScanner(),
        emitter=add_template_name
    )
