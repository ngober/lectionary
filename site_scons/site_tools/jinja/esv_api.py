import requests
import pathlib
import re

API_KEY = pathlib.Path('esv_api.key').read_text().strip()
API_URL = 'https://api.esv.org/v3/passage/text/'

def smallcap(text):
    return re.sub(r'\b[A-Z]+\b', lambda match: f'\\textsc{{{match.group(0).title()}}}', text)

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
    passages = [smallcap(r.strip()) for r in response['passages']]

    return addr_to_return, passages

