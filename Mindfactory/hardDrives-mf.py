# -*- coding: utf-8 -*- #declared to avoid issues with eur sign in python 2.7
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper
import re #regex
from datetime import datetime #allows us to add current time
import mysql.connector #allows connection to database. #pip install mysql-connector-python

links = [
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2947/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #1TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2952/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #2TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2954/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #3TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2956/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #4TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/61404/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978', #5TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2957/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #6TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2958/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #8TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2959/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #10TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2960/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978',  #12TB
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/106672/article_per_page/5/1/38960:928:2084:914:919:1110/79/3938/81/3978' #14TB
]


for link in links:
    getHTML = requests.get(link)
    getHTMLr = getHTML.content #raw HTML
    soupify = BeautifulSoup(getHTMLr, 'html.parser')
    containers = soupify.findAll("div",{"class":"pcontent"})
    for container in containers:
        #Disk name
        title_container = container.findAll("div", {"class":"pname"})
        title = title_container[0].text
        #Disk price
        price_container = container.findAll("div", {"class":"pprice"})
        price = price_container[0].text.replace('*','').strip()
        #Disk availability
        availability_container = container.findAll("div", {"class":"pshipping"})
        availability = availability_container[0].text.strip().replace('Lagernd','In Stock')
        #Disks sold
        sold_container = container.findAll("span", {"class":"pcountsold"})
        if len(sold_container) < 1:
            sold = "None"
        else:
            sold = sold_container[0].text.strip()
        #

        print title
        print price
        print availability
        print sold

# Current Date
currentDate = datetime.now().strftime('%Y-%m-%d')
print currentDate