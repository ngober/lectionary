import itertools
import operator
import pathlib
import os.path
import contextlib
import traceback

import jinja2

from util import noisy, parse_yaml

AddOption(
    '--draft',
    action='store_true',
    help='Build in draft form'
)

root = pathlib.Path(Dir('.').srcnode().abspath)

jinja_env = jinja2.Environment(
    loader=jinja2.FileSystemLoader(root / 'templates'),
    autoescape=jinja2.select_autoescape()
)

calendar = File(str(root / 'calendar.yaml'))
calendar_data = sorted(parse_yaml(str(calendar)), key=operator.itemgetter('week'))
data_nodes = { event['basename']: File(f'body/{event["basename"]}')  for event in calendar_data }

env = Environment(BUILDERS={
                      'TwoUp': Builder(
                          action="pdfjam --nup 2x1 --landscape --clip true --outfile $TARGET $SOURCE"
                      )
                  },
                  tools=['default', 'lilypond', 'jinja'],
                  jinja_env=jinja_env,
                  calendar_events=calendar_data,
                  DRAFT=GetOption('draft'))
env.Append(TEXINPUTS=str(root))

@noisy()
def Render(env, target_name, template_name, data):
    template = env['jinja_env'].get_template(os.path.basename(str(template_name)))
    rendered = template.render(**data)
    pathlib.Path(str(target_name)).write_text(rendered)
    return env.File(target_name)

AddMethod(env, Render)

def Build(env, directory, basename, sources):
    music_wrapper = env.LilypondWrapper(f'{directory}/{basename}_hymnal', 'templates/hymnal.ly.tmp')
    music_file = env.Lilypond(f'{directory}/{basename}_hymnal', music_wrapper)
    texfile = env.Wrapper(f'{directory}/{basename}', sources + music_file)
    env.Depends(texfile, calendar) # rebuild if calendar changed, but does not appear in sources
    return env.PDF(f'{directory}/{basename}', texfile)

AddMethod(env, Build)

def BuildSingle(env, basename):
    env.Body(f'body/{basename}')
    wrapper_sources = ['templates/single.tex']
    pdffile = env.Build('single', basename, wrapper_sources)
    return env.TwoUp(f'single/{basename}_2up.pdf', f'single/{basename}.pdf')

AddMethod(env, BuildSingle)

env.Lilypond('music/come_ye_sinners_poor_and_needy.ly')

for source in env.Glob('music/*.yaml'):
    target = pathlib.Path(str(source)).with_suffix('.ly')
    ly_single_target = env.LilypondSingle(target=str(target), source=source)
    env.Lilypond(target=str(target.with_suffix('.pdf')), source=ly_single_target) # Used for debugging

for event in calendar_data:
    event_file = File(f'body/{event["basename"]}.yaml')
    if event_file.exists():
        env.Clone(calendar_events=[event]).BuildSingle(event['basename'])

env.Build('full', 'full', ['templates/full.tex'])
Decider('timestamp-match')
