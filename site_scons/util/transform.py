import re

def get_basename(title):
    title = re.sub('\s', '_', title)
    title = re.sub('[\'.,?!]', '', title)
    return title.lower()

def make_dict_with(a, key):
    if not isinstance(a, dict):
        a = { key: a }
    return a
