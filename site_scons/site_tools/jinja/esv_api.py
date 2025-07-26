import requests
import pathlib
import re
import collections
import itertools

import pythonbible as bible

API_KEY = pathlib.Path('esv_api.key').read_text().strip()
API_URL = 'https://api.esv.org/v3/passage/text/'

def vref_range(ref):
    ids = bible.convert_reference_to_verse_ids(ref)
    if len(ids) < 2:
        return ''.join(map(str, ids))
    return f'{ids[0]}-{ids[-1]}'

def get_text(addresses):
    ids = [[vref_range(r) for r in bible.get_references(a)] for a in addresses]
    flatids = list(itertools.chain.from_iterable(ids))

    params = {
        'q': ','.join(flatids),
        'include-headings': False,
        'include-footnotes': False,
        'include-verse-numbers': False,
        'include-short-copyright': False,
        'include-passage-references': False
    }

    headers = {
        'Authorization': f'Token {API_KEY}'
    }

    response = requests.get(API_URL, params=params, headers=headers)
    response = response.json()

    verse_assignments = dict(zip(flatids, response['passages']))
    collected = [ '\n\n'.join(map(verse_assignments.__getitem__, i)) for i in ids ]

    return collected

