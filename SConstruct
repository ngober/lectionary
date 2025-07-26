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

AddOption(
    '--twoup',
    action='store_true',
    help='Build in 2up form'
)

root = Dir('.').srcnode().abspath

jinja_env = jinja2.Environment(
    loader=jinja2.FileSystemLoader(pathlib.Path(root) / 'templates'),
    autoescape=jinja2.select_autoescape()
)

calendar = File(str(pathlib.Path(root) / 'calendar.yaml'))
calendar_data = parse_yaml(str(calendar))

env = Environment(BUILDERS={
                      'TwoUp': Builder(
                          action="pdfjam --nup 2x1 --landscape --clip true --outfile $TARGET $SOURCE"
                      )
                  },
                  tools=['default', 'lilypond', 'jinja', 'geometry'],
                  ROOT=root,
                  FULLDIR=Dir('full'),
                  SINGLEDIR=Dir('single'),
                  BODYDIR=Dir('body'),
                  MUSICDIR=Dir('music'),
                  TEMPLATEDIR=Dir('templates'),
                  jinja_env=jinja_env,
                  calendar_file=calendar,
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

Decider('timestamp-match')
env.SConscript(['$FULLDIR/SConscript', '$SINGLEDIR/SConscript', '$BODYDIR/SConscript', '$MUSICDIR/SConscript'], exports='env')
