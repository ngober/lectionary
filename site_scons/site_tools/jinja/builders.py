import os
import traceback
import pathlib
import contextlib
import yaml

import SCons.Scanner.LaTeX
from SCons.Builder import Builder

from .esv_api import get_text

def parse_yaml(fname):
    with open(fname, 'rt') as rfp:
        return yaml.safe_load(rfp)

class noisy(contextlib.AbstractContextManager, contextlib.ContextDecorator):
    ''' A decorator that always prints exceptions '''
    def __exit__(self, exc_type, exc_value, trc):
        if exc_type is not None:
            print(traceback.format_exc())
        return False

def render_jinja(template_name, data, jinja_env):
    template = jinja_env.get_template(os.path.basename(str(template_name)))
    rendered = template.render(**data)
    return rendered

def get_first_with_ext(source, ext):
    return str(next(filter(lambda s: str(s).endswith(ext), source)))

def add_calendar_data(target, source, env):
    target_name = pathlib.Path(str(target[0]))
    cal_src_name = pathlib.Path(get_first_with_ext(source, '.yaml'))
    source.extend(f'data/{event_data["basename"]}.tex' for event_data in env['calendar_events'])
    return target, source

def add_template_name(target, source, env):
    target_name = pathlib.Path(str(target[0]))
    templates = [f'templates/{event_data.get("season", "body")}.tex' for event_data in env['calendar_events']]
    templates = [temp for temp in templates if os.path.exists(temp)]
    if not templates:
        templates = ['templates/body.tex']
    source.extend(templates)
    return target, source

def augment_readings(readings):
    def tolerate_dict(r):
        if isinstance(r, dict):
            return tolerate_dict(r['address'])
        address, text = get_text(r)
        return { 'address': address, 'text': '\n\n'.join(text) }
    return list(map(tolerate_dict, readings))

def normalize_yaml(parsed):
    readings = augment_readings(parsed['readings'])
    parsed['musicpages'] = parsed.get('musicpages') or {}
    parsed['presong_readings'] = readings[:len(readings)//2]
    parsed['postsong_readings'] = readings[len(readings)//2:]
    return parsed

@noisy()
def render_body(target, source, env):
    template_name = pathlib.Path(get_first_with_ext(source, '.tex'))
    data_src_name = pathlib.Path(get_first_with_ext(source, '.yaml'))
    data = normalize_yaml(parse_yaml(data_src_name))
    rendered = render_jinja(template_name, data, env['jinja_env'])
    pathlib.Path(str(target[0])).write_text(rendered)

@noisy()
def render_wrapper(target, source, env):
    target_name = pathlib.Path(str(target[0]))
    template_name = pathlib.Path(get_first_with_ext(source, '.tex'))
    render_data = {
        'calendar': env['calendar_events'],
        'musicpages': [pathlib.Path(str(f)).stem for f in source if str(f).endswith('.pdf')]
    }
    rendered = render_jinja(template_name, render_data, env['jinja_env'])
    target_name.write_text(rendered)

def WrapperBuilder():
    return Builder(
        action=render_wrapper,
        suffix='.tex',
        src_suffix='.yaml',
        target_scanner=SCons.Scanner.LaTeX.LaTeXScanner()
        #emitter=add_calendar_data
    )

def BodyBuilder():
    return Builder(
        action=render_body,
        suffix='.tex',
        src_suffix='.yaml',
        target_scanner=SCons.Scanner.LaTeX.LaTeXScanner(),
        emitter=add_template_name
    )
