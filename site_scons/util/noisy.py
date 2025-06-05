import contextlib
import traceback

class noisy(contextlib.AbstractContextManager, contextlib.ContextDecorator):
    ''' A decorator that always prints exceptions '''
    def __exit__(self, exc_type, exc_value, trc):
        if exc_type is not None:
            print(traceback.format_exc())
        return False
