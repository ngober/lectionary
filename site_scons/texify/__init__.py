import collections
import re
import itertools
import functools
import operator

def smallcap(text):
    return re.sub(r'\b[A-Z]{2,}\b', lambda match: f'\\textsc{{{match.group(0).title()}}}', text)

def drop_bracket(text):
    return re.sub(r'\[{1,2}((.|\n)*)\]{1,2}', r'\1', text, flags=re.MULTILINE)

def split_paragraph(text):
    return ['\n'.join(p) for k,p in itertools.groupby(text.splitlines(), key=lambda l: l.rstrip() != '') if k]

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

DOUBLE_QUOTED_STRING = re.compile(r'[“"]((?s:.)+?)[”"]', re.M)
SINGLE_QUOTED_STRING = re.compile(r"[‘']((?s:.)+?)[’']", re.M)

def fix_single_quote_instance(par):
    par = re.sub(SINGLE_QUOTED_STRING, lambda match: f'\say{{{ match.group(1) }}}', par, count=1)
    par = re.sub(DOUBLE_QUOTED_STRING, lambda match: f'\say{{{ match.group(1) }}}', par, count=1)
    return par

def produce(func, initial):
    while True:
        initial = func(initial)
        yield initial

def fix_quotes(par):
    fix_sequence = produce(fix_single_quote_instance, par)
    fix_sequence = itertools.dropwhile(lambda args: args[0] != args[1], itertools.pairwise(fix_sequence))
    fix_sequence = map(operator.itemgetter(1), fix_sequence)

    result = next(fix_sequence)

    with_prefix = f'"{result}'
    result_with_prefix = fix_single_quote_instance(with_prefix)
    if result_with_prefix != with_prefix:
        return result_with_prefix

    with_suffix = f'{result}"'
    result_with_suffix = fix_single_quote_instance(with_suffix)
    if result_with_suffix != with_suffix:
        return result_with_suffix

    return result

RIGHT_SELAH = '''

\\\\setlength{\\\\parindent}{3in}
\\\\textit{Selah}
\\\\setlength{\\\\parindent}{15pt}

'''
UNESCAPED_WORD = re.compile(r'\b(?<!\\)\S*\s*')
def config_par_adjust(par, skip=0, prefix=None):
    # Skip N initial words
    if skip:
        par = UNESCAPED_WORD.sub('', par, count=skip)

    # Add a prefix to the reading, if indicated
    # e.g. [Jesus said:]
    if prefix:
        par = UNESCAPED_WORD.sub(lambda match: f'[{prefix}] {match.group(0)}', par, count=1)

    # Ensure the first word is capitalized
    par = UNESCAPED_WORD.sub(lambda match: match.group(0).capitalize(), par, count=1)

    return par

def identity(x):
    return x

def process_par(par, func=identity):
    # Drop [brackets] used by translations to indicate uncertain readings
    par = drop_bracket(par)

    par = func(par)

    # Change all-caps words (e.g. LORD) to smallcap style
    par = smallcap(par)

    # Push 'Selah' in psalms to the right and italicize
    par = re.sub('Selah$', RIGHT_SELAH, par)

    # Join lines together again
    lines = par.splitlines()
    par = '\n'.join(' '.join(l) for l in zip(indentations_for(lines), lines))

    # Use LaTeX's dirtytalk package to ensure quotes are good
    par = fix_quotes(par)

    return par
    
def reading_join_text(address, text, **kwargs):
    parfuncs = itertools.chain([functools.partial(config_par_adjust, **kwargs)], itertools.repeat(identity))
    text = [process_par(par, func) for par, func in zip(split_paragraph(text), parfuncs)]

    return { **kwargs, 'address': address, 'text': text }
