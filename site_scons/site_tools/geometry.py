import pathlib

from SCons.Builder import Builder

from util import parse_yaml

LILYPOND_TRANFORMATIONS = {
    'top': 'top-margin',
    'bottom': 'bottom-margin',
    'left': 'left-margin',
    'right': 'right-margin',
}

DEFAULT_GEOMETRY = {
    'paperheight': 11,
    'paperwidth': 8.5
}

DEFAULT_FACTORS = {
    'top': ('paperheight', 0.12),
    'bottom': ('top', 1.5),
    'left': ('paperwidth', 0.15),
    'right': ('left', 1)
}

def kv_lines(items, prefix=None, suffix=None):
    prefix = prefix or ''
    suffix = suffix or ''
    for k,v in items.items():
        yield f'{prefix}{k} = {v:.4f}{suffix}'

def parse(fname):
    options = { **DEFAULT_GEOMETRY, **parse_yaml(fname) }
    for k, (base_k, factor) in DEFAULT_FACTORS.items():
        options[k] = options.get(k, options.get(base_k) * factor)
    return options

def generate_ly_geometry(target, source, env):
    name = 'paper'
    parsed = parse(str(source[0]))
    parsed = { LILYPOND_TRANFORMATIONS.get(k,k): v for k,v in parsed.items() }

    paper_options = { k: parsed[k] for k in ['paperheight', 'paperwidth'] }
    margin_options = { k: parsed[k] for k in ['top-margin', 'bottom-margin', 'left-margin', 'right-margin'] }

    options = f'    #(set-paper-size \'(cons (* {paper_options["paperwidth"]} in) (* {paper_options["paperheight"]} in)))\n'
    options = options + '\n'.join(kv_lines(margin_options, prefix='    ', suffix='\\in'))
    pathlib.Path(str(target[0])).write_text(f'\\{name}{{\n{options}\n}}')

def generate_tex_geometry(target, source, env):
    name = 'geometry'
    options = parse(str(source[0]))
    options = ',\n'.join(kv_lines(options, prefix='    ', suffix='in'))
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

