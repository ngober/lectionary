import itertools
import os
import traceback
import pathlib
import contextlib

import jinja2
import yaml

import SCons.Scanner.LaTeX

root = pathlib.Path(Dir('.').srcnode().abspath)

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
    template = env['jinja_env'].get_template(os.path.basename(str(template_name)))
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
    templates = [File(f'templates/{event_data.get("season", "body")}.tex') for event_data in env['calendar_events']]
    templates = [temp for temp in templates if temp.exists()]
    if not templates:
        templates = [File('templates/body.tex')]
    source.extend(templates)
    return target, source

@noisy()
def render_body(target, source, env):
    template_name = pathlib.Path(get_first_with_ext(source, '.tex'))
    data_src_name = pathlib.Path(get_first_with_ext(source, '.yaml'))
    data = parse_yaml(data_src_name)
    rendered = render_jinja(template_name, data, env['jinja_env'])
    pathlib.Path(str(target[0])).write_text(rendered)

@noisy()
def render_wrapper(target, source, env):
    target_name = pathlib.Path(str(target[0]))
    template_name = pathlib.Path(get_first_with_ext(source, '.tex'))
    render_data = {
        'calendar': env['calendar_events'],
        'musicpages': [pathlib.Path(str(f)).name for f in source if str(f).endswith('.pdf')]
    }
    rendered = render_jinja(template_name, render_data, env['jinja_env'])
    target_name.write_text(rendered)

def generate_lilypond(source, target, env, for_signature):
    target_name = os.path.splitext(str(target[0]))[0]
    return f'lilypond --pspdfopt=TeX -o {target_name} {source[0]!s}'

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

jinja_env = jinja2.Environment(
    loader=jinja2.FileSystemLoader(root / 'templates'),
    autoescape=jinja2.select_autoescape()
)

calendar = File(str(root / 'data' / '_calendar.yaml'))
calendar_data = parse_yaml(str(calendar))
data_nodes = { event['basename']: File(f'data/{event["basename"]}')  for event in calendar_data }

env = Environment(BUILDERS={
                      'Wrapper': Builder(
                          action=render_wrapper,
                          suffix='.tex',
                          src_suffix='.yaml',
                          target_scanner=SCons.Scanner.LaTeX.LaTeXScanner()
                          #emitter=add_calendar_data
                      ),
                      'Body': Builder(
                          action=render_body,
                          suffix='.tex',
                          src_suffix='.yaml',
                          target_scanner=SCons.Scanner.LaTeX.LaTeXScanner(),
                          emitter=add_template_name
                      ),
                      'Lilypond': lilypond_builder,
                      'MusicXML': musicxml_converter,
                      'TwoUp': Builder(
                          action="pdfjam --nup 2x1 --landscape --trim '2cm 4cm 1cm 4cm' --clip true --outfile $TARGET $SOURCE"
                      )
                  },
                  jinja_env=jinja_env,
                  calendar_events=calendar_data)

def Build(env, directory, basename, sources):
    texfile = env.Wrapper(f'{directory}/{basename}', sources)
    env.Depends(texfile, calendar) # rebuild if calendar changed, but does not appear in sources
    return env.PDF(f'{directory}/{basename}', texfile)

AddMethod(env, Build)

def BuildSingle(env, basename):
    env.Body(f'body/{basename}', f'data/{basename}')

    parsed_event = parse_yaml(f'data/{basename}.yaml')
    wrapper_sources = ['templates/single.tex'] + [f'music/{music_file}' for music_file in parsed_event['musicpages'].values()]

    return env.Build('single', basename, wrapper_sources)

AddMethod(env, BuildSingle)

env.MusicXML('music/yet_not_i')

musicfiles = list(itertools.chain(
env.Lilypond('music/hark_the_herald_angels_sing.ly'),
env.Lilypond('music/o_come_o_come_emmanuel.ly'),
env.Lilypond('music/turn_your_eyes_upon_jesus.ly'),
env.Lilypond('music/o_come_all_ye_faithful.ly'),
env.Lilypond('music/only_a_holy_god.ly'),
env.Lilypond('music/yet_not_i.ly'),
))

for event in calendar_data:
    event_file = File(f'data/{event["basename"]}.yaml')
    if event_file.exists():
        env.Clone(calendar_events=[event]).BuildSingle(event['basename'])

env.Build('full', 'full', ['templates/full.tex'] + musicfiles)
