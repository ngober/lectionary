import pathlib
import itertools
import operator
import collections
import yaml
import csv
import re

from util import get_basename, parse_yaml, make_dict_with

from SCons.Builder import Builder

def gather(seq):
    result = collections.defaultdict(list)
    for elem in seq:
        for k,v in elem.items():
            result[k].append(v)
    return result

def merge_similar(entries):
    catalog = []
    for _,g in itertools.groupby(entries, key=operator.itemgetter('key')):
        catalog.append(gather(g))
    return catalog

class join_funcs(dict):
    def __missing__(self, key):
        return lambda g: next(iter(g[key]), None)

def join_entries(merged):
    funcs = join_funcs();
    funcs['ref'] = lambda g: ', '.join(g['ref'])

    for k,v in merged.items():
        merged[k] = funcs[k](v)

    return merged
        
def make_catalog(target, source, env):
    # Each source looks like {title: info}
    entries = list(itertools.chain.from_iterable(parse_yaml(str(s)) for s in source))
    entries = sorted(entries, key=operator.itemgetter('key'))

    catalog = merge_similar(entries)
    catalog = map(join_entries, catalog)
    catalog = { e.pop('title'): e for e in catalog }

    with open(str(target[0]), 'wt') as wfp:
        yaml.dump(catalog, wfp)

def make_internal_catalog(target, source, env):
    def make_page(fname):
        data = parse_yaml(fname)
        basename = pathlib.Path(fname).stem
        return {
                'title' : data['title'],
                'ref': f'pg. \pageref{{mus:{ get_basename(basename) }}}',
                'basename': basename,
                'key' : get_basename(data['title']),
                'poet' : make_dict_with(data.get('poet', {}), 'name').get('name', ''),
                'composer' : make_dict_with(data.get('composer', {}), 'name').get('name', ''),
                'first_line': data['sections'][0]['lyrics'][0].splitlines()[0]
            }
    catalog = [make_page(str(s)) for s in source]
    with open(str(target[0]), 'wt') as wfp:
        yaml.dump(catalog, wfp)

def make_external_catalog(target, source, env):
    def match_list(l):
        names = [n.strip() for n in l.split(',')]
        names = [n for n in names if re.match('[a-zA-Z. ]', n)]
        return ', '.join(names)

    def make_page(row):
        prefix = row['hymnalID']#.strip('1234567890')
        return {
                'title': row['displayTitle'],
                'ref' : f'{prefix} {row["number"]}',
                'key' : row['textAuthNumber'],
                'poet' : match_list(row['authors']),
                'composer' : match_list(row['composers']),
                'first_line' : row['firstLine']
            }

    with open(str(source[0]), newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        catalog = [make_page(r) for r in reader]

    with open(str(target[0]), 'wt') as wfp:
        yaml.dump(catalog, wfp)

def generate(env):
    catalog_builder = Builder(action=make_catalog)
    internal_catalog_builder = Builder(action=make_internal_catalog)
    external_catalog_builder = Builder(action=make_external_catalog, suffix='yaml', src_suffix='csv')

    env['BUILDERS']['Catalog'] = catalog_builder
    env['BUILDERS']['InternalCatalog'] = internal_catalog_builder
    env['BUILDERS']['ExternalCatalog'] = external_catalog_builder

def exists(env):
    return True

