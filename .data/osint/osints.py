#!/usr/local/bin/python3
# coding: utf-8 

from requests import get
from fuzzywuzzy import fuzz
from googlesearch import search
from bs4 import BeautifulSoup
from colorama import Fore, Back, Style, init
import os,sys,time

# colorama
init(autoreset=True)

# Logo
def tik(x):
	for i in x + "\n":
		sys.stdout.write(i)
		sys.stdout.flush()
		time.sleep(0.025)

def tiks(x):
        for i in x + "\n":
                sys.stdout.write(i)
                sys.stdout.flush()
                time.sleep(0.0025)


os.system("clear")
tik("[*] input name victim")
query   = input(Back.BLACK + Fore.YELLOW + '> ' + Back.RESET + Fore.WHITE)
results = 100

tiks('[~] Searching ' + query)
for url in search(query, stop = results):
	tiks('[+] Url detected: ' + url) #'\n' +
	try:
		text = get(url, timeout = 1).text
	except:
		continue
	soup = BeautifulSoup(text, "html.parser")
	links_detected = []
	try:
		tiks('[?] Title: ' + soup.title.text.replace('\n', ''))
	except:
		tiks('[?] Title: null')
	# Find by <a> tags
	try:
		for link in soup.findAll('a'):
			href = link['href']
			if not href in links_detected:
				if href.startswith('http'):
					# Filter
					if url.split('/')[2] in href:
						links_detected.append(href)
					# If requested data found in url
					elif query.lower() in href.lower():
						tiks('--- Requested data found at link : ' + href)
						links_detected.append(href)
					# If text in link and link location is similar
					elif fuzz.ratio(link.text, href) >= 1:
						tiks('--- Text and link are similar : ' + href)
						links_detected.append(href)
	except:
		continue
	if links_detected == []:
		tiks('--- No data found')



	
#for s in links_detected: print(s)

	
