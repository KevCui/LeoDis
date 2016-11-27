#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import requests
import argparse

# Check texttable
try:
    import texttable
except ImportError:
    print("It seams `texttable` is not installed. Please pip install texttable")

# Check BeautifulSoup
try:
    from bs4 import BeautifulSoup
except ImportError:
    print("It seams `BeautifulSoup` is not installed. Please pip install beautifulsoup4")

# Parse args
parser = argparse.ArgumentParser()
parser.add_argument('search', nargs='*', help='search text')
parser.add_argument('-l', '--lang', choices=['en', 'fr', 'es', 'it', 'ch', 'ru', 'pt', 'pl'], default='en', help='languare')
args = parser.parse_args()

os.system('reset')

url = 'https://dict.leo.org/dictQuery/m-vocab/' + args.lang + 'de/query.xml?search=' + '%20'.join(args.search)

soup = BeautifulSoup(requests.get(url).text, "xml")
if soup.section:
    for section in soup.find_all('section'):
        # Remove Examples
        if section['sctTitle'] != "Examples":

            # Add table header
            content = [[section['sctTitle'], '']]

            for entry in section.find_all('entry'):
                # Add table body
                content.append([
                    entry.find_all('side')[0].repr.getText(),
                    entry.find_all('side')[1].repr.getText()
                ])

            table = texttable.Texttable()
            table.set_cols_width([60,60])
            table.set_deco(table.HEADER)
            table.add_rows(content)
            print(table.draw() + '\n')
else:
    try:
        for side in soup.similar.find_all('side'):
            for word in side.find_all('word'):
                print(side['lang'] + ' ' + word.getText())
    except:
        print('Nothing found...')
