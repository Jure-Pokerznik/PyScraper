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
    'database':'mindfactory_scraper'
}
mydb = mysql.connector.connect(**config)

links = [
    'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2947/listing_sort/6/79/3938/81/3978', #1 
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2952/listing_sort/6/79/3938/81/3978', #2
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2954/listing_sort/6/79/3938/81/3978', #3
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2956/listing_sort/6/79/3938/81/3978', #4
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/61404/listing_sort/6/79/3938/81/3978', #5
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2957/listing_sort/6/79/3938/81/3978', #6
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2958/listing_sort/6/79/3938/81/3978', #8
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2959/listing_sort/6/79/3938/81/3978', #10
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/2960/listing_sort/6/79/3938/81/3978', #12
	'https://www.mindfactory.de/Hardware/Festplatten+(HDD).html/71/106672/listing_sort/6/79/3938/81/3978' #14
]

sizes = ["1", "2", "3", "4", "5", "6", "8", "10", "12", "14"] #sizes in terabytes for supplied links

currentDate = datetime.now().strftime('%Y-%m-%d')

for link, size in zip(links, sizes): 
    getHTML = requests.get(link)
    getHTMLr = getHTML.content # This will give you raw HTML from getLink1TB
    soupify = BeautifulSoup(getHTMLr, 'html.parser')
    containers = soupify.find("div",{"class":"pcontent"})
    #print containers
    if containers > 0: #if there are no available items, it returns 0
        #title
        title_container = containers.find("div", {"class":"pname"})
        title = title_container.text.strip()
        #price
        price_container = containers.find("div", {"class":"pprice"})
        price = price_container.text.replace(",",".")
        price_strip = re.sub('[^0-9.]', '', price)
        #price per TB
        priceTB = float(price_strip)/int(size)

        #link
        href_container = soupify.find('a',{'class':'phover-complete-link'})['href']
        href =  href_container
        
        store = "Mindfactory"
        #print title
        #print size + "TB"
        #print price_strip + " EUR"
        #print currentDate
        #print priceTB
        #print href
        
        
        
        mycursor = mydb.cursor()
        sql = "INSERT INTO hdd (name, size, price, date, priceTB, href, store) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (title, size, price_strip, currentDate, priceTB, href, store)
        mycursor.execute(sql,val)
        mydb.commit()
        print(mycursor.rowcount, "Hard drives added!")

    else:
        print "Size not added: " + size + " TB"
    # Add data to DB