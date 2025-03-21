from .builders import WrapperBuilder, BodyBuilder

def generate(env):
    env['BUILDERS']['Wrapper'] = WrapperBuilder()
    env['BUILDERS']['Body'] = BodyBuilder()

def exists():
    try:
        import jinja2, yaml
        return True
    except ImportError:
        return False

