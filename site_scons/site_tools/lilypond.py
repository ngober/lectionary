import os.path

from SCons.Builder import Builder

def generate_lilypond(source, target, env, for_signature):
    target_name = os.path.splitext(str(target[0]))[0]
    return f'lilypond --pspdfopt=TeX -o {target_name} {source[0]!s}'

def generate(env):
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

    env['BUILDERS']['Lilypond'] = lilypond_builder
    env['BUILDERS']['MusicXML'] = musicxml_converter

def exists(env):
    return True
