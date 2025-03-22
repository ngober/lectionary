import itertools
import pathlib

import jinja2
import yaml

root = pathlib.Path(Dir('.').srcnode().abspath)

def parse_yaml(fname):
    with open(fname, 'rt') as rfp:
        return yaml.safe_load(rfp)

jinja_env = jinja2.Environment(
    loader=jinja2.FileSystemLoader(root / 'templates'),
    autoescape=jinja2.select_autoescape()
)

calendar = File(str(root / 'data' / '_calendar.yaml'))
calendar_data = parse_yaml(str(calendar))
data_nodes = { event['basename']: File(f'data/{event["basename"]}')  for event in calendar_data }

env = Environment(BUILDERS={
                      'TwoUp': Builder(
                          action="pdfjam --nup 2x1 --landscape --trim '2cm 4cm 1cm 4cm' --clip true --outfile $TARGET $SOURCE"
                      )
                  },
                  tools=['default', 'lilypond', 'jinja'],
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
    wrapper_sources = ['templates/single.tex'] + [f'music/{music_file}.pdf' for music_file in (parsed_event.get('musicpages') or {}).values()]

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
env.Lilypond('music/be_thou_my_vision.ly')
))

for event in calendar_data:
    event_file = File(f'data/{event["basename"]}.yaml')
    if event_file.exists():
        env.Clone(calendar_events=[event]).BuildSingle(event['basename'])

env.Build('full', 'full', ['templates/full.tex'] + musicfiles)
