# -*- coding: utf-8 -*- #declared to avoid issues with eur sign in python 2.7
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper
import re #regex
from datetime import datetime #allows us to add current time
import mysql.connector #allows connection to database. #pip install mysql-connector-python

#DB Config
config = {
    'user':'yuri',
    'password':'STyecJowufkuph9',
    'host':'192.168.178.55',
    'database':'mimovrste_scraper'
}
mydb = mysql.connector.connect(**config)

# This is a scraper for mimovrste.com; We'll be finding the cheapest price of hard drives in each size from 1TB to 12TB.
links = [
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=1111',     #1TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=1800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=2222',    #2TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=2800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=3333',    #3TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=3800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=4444',    #4TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=4800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=5555',    #5TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=5555&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=6666',    #6TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=6666&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=8888',    #8TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=9999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=10101',   #10TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=10102&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12800',   #12TB
    'https://www.mimovrste.com/trdi-diski-hdd?p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C&o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=13111&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=15121'   #14TB
]
sizes = ["1", "2", "3", "4", "5", "6", "8", "10", "12", "14"] #sizes in terabytes for supplied links

currentDate = datetime.now().strftime('%Y-%m-%d')

for link, size in zip(links, sizes): 
    getHTML = requests.get(link)
    getHTMLr = getHTML.content # This will give you raw HTML from getLink1TB
    soupify = BeautifulSoup(getHTMLr, 'html.parser')
    containers = soupify.find("div",{"class":"lst-product-item-body"})
    if containers > 0: #if there are no available items, it returns 0
        #title
        title_container = containers.find("h3", {"class":"lst-product-item-title"})
        title = title_container.text.strip()
        #price
        price_container = containers.find("span", {"class":"lst-product-item-price-value"})
        price = price_container.text.replace(",",".")
        price_strip = re.sub('[^0-9.]', '', price)
        #price per TB
        priceTB = float(price_strip)/int(size)

        #print title
        #print size + "TB"
        #print price_strip + " EUR"
        #print currentDate
        #print priceTB
        mycursor = mydb.cursor()
        sql = "INSERT INTO hdd (name, size, price, date, priceTB) VALUES (%s, %s, %s, %s, %s)"
        val = (title, size, price_strip, currentDate, priceTB)
        mycursor.execute(sql,val)
        mydb.commit()
        print(mycursor.rowcount, "Hard drives added!")

    else:
        print "Something failed"
    # Add data to DB
    