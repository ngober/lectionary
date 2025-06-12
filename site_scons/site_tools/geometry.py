import pathlib

from SCons.Builder import Builder

from util import parse_yaml

LILYPOND_TRANFORMATIONS = {
    'top': 'top-margin',
    'bottom': 'bottom-margin',
    'left': 'left-margin',
    'right': 'right-margin',
}

def generate_ly_geometry(target, source, env):
    name = 'paper'
    options = { LILYPOND_TRANFORMATIONS.get(k,k): v for k,v in parse_yaml(str(source[0])).items() }
    for margin in ['top-margin', 'bottom-margin']:
        options[margin] = options.get(margin,0) + 1.5
    options = '\n'.join(f'    {k} = {v}\\in' for k,v in options.items())
    pathlib.Path(str(target[0])).write_text(f'\\{name}{{\n{options}\n}}')

def generate_tex_geometry(target, source, env):
    name = 'geometry'
    options = parse_yaml(str(source[0]))
    options = ',\n'.join(f'    {k}={v}in' for k,v in options.items())
    pathlib.Path(str(target[0])).write_text(f'\\{name}{{\n{options}\n}}')

def generate(env):
    ly_geometry_builder = Builder(
        action=generate_ly_geometry,
        suffix='.ly',
        src_suffix='.yaml'
    )

    tex_geometry_builder = Builder(
        action=generate_tex_geometry,
        suffix='.tex',
        src_suffix='.yaml'
    )

    env['BUILDERS']['LyGeometry'] = ly_geometry_builder
    env['BUILDERS']['TexGeometry'] = tex_geometry_builder

def exists(env):
    return True

