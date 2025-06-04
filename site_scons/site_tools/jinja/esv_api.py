import requests
import pathlib
import re
import collections
import itertools

API_KEY = pathlib.Path('esv_api.key').read_text().strip()
API_URL = 'https://api.esv.org/v3/passage/text/'

def smallcap(text):
    return re.sub(r'\b[A-Z]{2,}\b', lambda match: f'\\textsc{{{match.group(0).title()}}}', text)

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

def process_passage(text, address):
    text = smallcap(text)
    pars = split_paragraph(text)

    if re.match('Psalm \d*$', address): # TODO also match Psalm \d*:1-
        pars = pars[1:]

    return [indent_paragraph(p) for p in pars]

def get_text(address):

    params = {
        'q': address,
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

    addr_to_return = response['canonical']
    passages = list(itertools.chain.from_iterable(process_passage(r, addr_to_return) for r in response['passages']))

    return addr_to_return, passages

