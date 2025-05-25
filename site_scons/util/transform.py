import re

def get_basename(title):
    title = re.sub('\s', '_', title)
    title = re.sub('[\'.,?!]', '', title)
    return title.lower()
