from .builders import WrapperBuilder, MusicRefBuilder, BodyBuilder, TemplateScanner

def generate(env):
    env['BUILDERS']['Wrapper'] = WrapperBuilder()
    env['BUILDERS']['MusicRef'] = MusicRefBuilder()
    env['BUILDERS']['Body'] = BodyBuilder()
    env['SCANNERS'].append(TemplateScanner())

def exists():
    try:
        import jinja2, yaml
        return True
    except ImportError:
        return False

