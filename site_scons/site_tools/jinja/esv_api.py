import requests
import pathlib
import re
import collections
import itertools

import pythonbible as bible

API_KEY = pathlib.Path('esv_api.key').read_text().strip()
API_URL = 'https://api.esv.org/v3/passage/text/'

def smallcap(text):
    return re.sub(r'\b[A-Z]{2,}\b', lambda match: f'\\textsc{{{match.group(0).title()}}}', text)

def drop_bracket(text):
    return re.sub(r'\[{1,2}((.|\n)*)\]{1,2}', r'\1', text, flags=re.MULTILINE)

def split_paragraph(text):
    return [list(p) for k,p in itertools.groupby(text.splitlines(), key=lambda l: l.rstrip() != '') if k]

def indent_counts(lines):
    counters = (len(re.search('\s*', l).group(0)) for l in lines)
    return collections.Counter(counters)

def poetry_indent(lines, short_indent, long_indent):
    def ident(l):
        startspace = len(re.search('\s*', l).group(0))
        if startspace == long_indent:
            return f'\\par\\indent {l}'
        return f'\\par\\noindent {l}'
    return list(map(ident, lines))

def indent_paragraph(par):
    counts = indent_counts(par)
    if len(counts.keys()) == 2:
        short_indent = min(counts.keys())
        long_indent = max(counts.keys())
        if counts[short_indent] >= 0.5*counts[long_indent]:
            return '\n'.join(poetry_indent(par, short_indent, long_indent))
        else:
            return '\n'.join(par)
    else:
        return '\n'.join(par)

RIGHT_SELAH = '''

\\\\setlength{\\\\parindent}{3in}
\\\\textit{Selah}
\\\\setlength{\\\\parindent}{15pt}

'''
def process_passage(text, address):
    text = smallcap(text)
    text = drop_bracket(text)
    pars = split_paragraph(text)

    if re.search('Psalm \d*$', address) or re.search('Psalm \d*:1\b', address):
        pars = pars[1:]

    for par in pars:
        par[-1] = re.sub('Selah$', RIGHT_SELAH, par[-1])

    return [indent_paragraph(p) for p in pars]

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

    return [process_passage(*args) for args in zip(collected, addresses)]

