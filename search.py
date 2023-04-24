from email.mime import base
from re import T
import re
from googlesearch import search
from urllib.error import HTTPError
import sys
import webbrowser

base_url = "https://www.google.co.uk/search?q="

def parse(index):
    raw_query = sys.argv[index:]
    parsed_query = ""
    for word in raw_query:
        parsed_query += str(word) + " "
    return parsed_query


def launch():
    first_param = sys.argv[1]
    flag = ""
    if first_param == 's':
        parsed_query = parse(2)
        flag = "site:stackoverflow.com"
    elif first_param == 'r':
        parsed_query = parse(2)
        flag = "site:reddit.com"
    else:
        parsed_query = parse(1)

    launch_query = base_url + parsed_query + flag
    webbrowser.open_new_tab(launch_query)


launch()