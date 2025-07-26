import collections
import re
import itertools

import pythonbible as bible

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

def address_to_index(address):
    sort_key = bible.convert_references_to_verse_ids(bible.get_references(address))[0]
    sort_key = f'{sort_key:08}' # Pad to 8 digits, early books only have 7
    sort_key = [sort_key[:2], sort_key[2:5]] # book index, chapter index

    # Extract a book name (maybe has a leading digit) and prepend book and chapter sort keys
    return re.sub(r'((?:\d\s)?\w+)\s*', f'{sort_key[0]}@\\1!{sort_key[1]}@', address, count=1)

RIGHT_SELAH = '''

\\\\setlength{\\\\parindent}{3in}
\\\\textit{Selah}
\\\\setlength{\\\\parindent}{15pt}

'''
UNESCAPED_WORD = re.compile(r'\b(?<!\\)\w*\b\s*')
def reading_join_text(address, text):
    text = smallcap(text)
    text = drop_bracket(text)
    pars = split_paragraph(text)

    if re.search('Psalm \d*$', address['address']) or re.search('Psalm \d*:1\b', address['address']):
        pars = pars[1:]

    for par in pars:
        par[-1] = re.sub('Selah$', RIGHT_SELAH, par[-1])

    firstparagraph, *tailparagraphs = [indent_paragraph(p) for p in pars]
    firstline, *taillines = firstparagraph.lstrip().splitlines()

    if address.get('skip'):
        firstline = re.sub(UNESCAPED_WORD, '', firstline, count=address['skip'])
    firstline = re.sub(UNESCAPED_WORD, lambda match: match.group(0).capitalize(), firstline, count=1)

    firstparagraph = '\n'.join(itertools.chain([firstline], taillines)).strip()
    return { **address, 'text': [firstparagraph, *tailparagraphs], 'index': address_to_index(address['address']) }
