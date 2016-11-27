---
Title: LeoDis
Description: A CLI version LEO Dictionary
Author: KrazyCavin
Tags: CLI, python, script
created:  27 Nov 2016
---

LeoDis
======
[LEO](https://dict.leo.org/) (meaning Link Everything Online) is an online dictionary. It supports 8 different language translations to German. This script is a wrapper to fetch search results from LEO and then show them in CLI. _(yep, I know wrapper is not proper... If there is an API support, it'll be really awesome :neckbeard:)_

### Support dictionary
* :gb: Englisch ⇔ Deutsch
* :fr: Französisch ⇔ Deutsch
* :es: Spanisch ⇔ Deutsch
* :it: Italienisch ⇔ Deutsch
* :cn: Chinesisch ⇔ Deutsch
* :ru: Russisch ⇔ Deutsch
* Portugiesisch ⇔ Deutsch
* Polnisch ⇔ Deutsch

### Requirement
* beautifulsoup4: [https://www.crummy.com/software/BeautifulSoup/bs4/doc/](https://www.cruoftware/BeautifulSoup/bs4/doc/)
* texttable: [https://github.com/foutaise/texttable/](https://github.com/foutaise/texttable/)
* requests: [http://docs.python-requests.org/en/master/](http://docs.python-requests.org/en/master/)

### Installation
* pip install -r requirements.txt

### How to use
```
usage: leo [-h] [-l {en,fr,es,it,ch,ru,pt,pl}] [search [search ...]]

positional arguments:
  search                search text

optional arguments:
  -h, --help            show this help message and exit
  -l {en,fr,es,it,ch,ru,pt,pl}, --lang {en,fr,es,it,ch,ru,pt,pl}
                        languare
```
