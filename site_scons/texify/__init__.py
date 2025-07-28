import collections
import re
import itertools
import functools

def smallcap(text):
    return re.sub(r'\b[A-Z]{2,}\b', lambda match: f'\\textsc{{{match.group(0).title()}}}', text)

def drop_bracket(text):
    return re.sub(r'\[{1,2}((.|\n)*)\]{1,2}', r'\1', text, flags=re.MULTILINE)

def split_paragraph(text):
    return [list(p) for k,p in itertools.groupby(text.splitlines(), key=lambda l: l.rstrip() != '') if k]

def indent_counts(lines):
    return [len(re.search('\s*', l).group(0)) for l in lines]

def indentations_for(par):
    counts = indent_counts(par)
    countcounts = collections.Counter(counts)
    if 0 in countcounts.keys():
        del countcounts[0]
    if len(countcounts.keys()) == 2:
        short_indent = min(countcounts.keys())
        long_indent = max(countcounts.keys())
        if countcounts[short_indent] >= 0.5*countcounts[long_indent]:
            def ident(startspace):
                if startspace == long_indent:
                    return '\\par\\indent'
                if startspace == short_indent:
                    return '\\par\\noindent'
                return ''
            return map(ident, counts)
    return itertools.repeat('')

RIGHT_SELAH = '''

\\\\setlength{\\\\parindent}{3in}
\\\\textit{Selah}
\\\\setlength{\\\\parindent}{15pt}

'''
UNESCAPED_WORD = re.compile(r'\b(?<!\\)\S*\s*')
def config_par_adjust(par, skip=0, prefix=None):
    # Skip N initial words
    if skip:
        par[0] = re.sub(UNESCAPED_WORD, '', par[0], count=skip)

    # Add a prefix to the reading, if indicated
    # e.g. [Jesus said:]
    prefix = f'[{prefix}] ' if prefix else ''

    # Ensure the first word is capitalized
    par[0] = re.sub(UNESCAPED_WORD, lambda match: f'{prefix}{match.group(0).capitalize()}', par[0], count=1)

    return par

def identity(x):
    return x

def process_par(par, func=identity):
    # Drop [brackets] used by translations to indicate uncertain readings
    par = [drop_bracket(l) for l in par]

    par = func(par)

    # Push 'Selah' in psalms to the right and italicize
    par[-1] = re.sub('Selah$', RIGHT_SELAH, par[-1])

    # Change all-caps words (e.g. LORD) to smallcap style
    par = [smallcap(l) for l in par]

    # FIXME use LaTeX's dirtytalk package to ensure quotes are good

    # Join lines together again
    return '\n'.join(' '.join(l) for l in zip(indentations_for(par), par))
    
def reading_join_text(address, text, **kwargs):
    parfuncs = itertools.chain([functools.partial(config_par_adjust, **kwargs)], itertools.repeat(identity))
    text = [process_par(par, func) for par, func in zip(split_paragraph(text), parfuncs)]

    return { **kwargs, 'address': address, 'text': text }
