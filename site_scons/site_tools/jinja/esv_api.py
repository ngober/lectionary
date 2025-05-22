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

def indent(text):
    paragraphs = list(split_paragraph(text))
    icounts = [indent_counts(p) for p in paragraphs]

    reassembled_paragraphs = []
    for p,counts in zip(paragraphs, icounts):
        if len(counts.keys()) == 2:
            short_indent = min(counts.keys())
            long_indent = max(counts.keys())
            if counts[short_indent] >= 0.8*counts[long_indent]:
                reassembled_paragraphs.append('\n'.join(poetry_indent(p, short_indent, long_indent)))
            else:
                reassembled_paragraphs.append('\n'.join(p))
        else:
            reassembled_paragraphs.append('\n'.join(p))

    return reassembled_paragraphs

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
    passages = list(itertools.chain.from_iterable(indent(smallcap(r)) for r in response['passages']))

    return addr_to_return, passages

