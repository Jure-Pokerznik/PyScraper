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
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2919/listing_sort/6/79/3937', #120
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2920/listing_sort/6/79/3937', #128
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2929/listing_sort/6/79/3937', #240
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2930/listing_sort/6/79/3937', #250
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2931/listing_sort/6/79/3937', #256
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2938/listing_sort/6/79/3937', #480
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2939/listing_sort/6/79/3937', #500
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2940/listing_sort/6/79/3937', #512
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2946/listing_sort/6/79/3937', #960
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2947/listing_sort/6/79/3937', #1000
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2952/listing_sort/6/79/3937', #2000
    'https://www.mindfactory.de/Hardware/Solid+State+Drives+(SSD).html/71/2956/listing_sort/6/79/3937'  #4000
]

sizes = ["120", "128", "240", "250", "256", "480", "500", "512", "960", "1000", "2000", "4000", "8000"]

currentDate = datetime.now().strftime('%Y-%m-%d')

for link, size in zip(links, sizes): 
    getHTML = requests.get(link)
    getHTMLr = getHTML.content # This will give you raw HTML from getLink1TB
    soupify = BeautifulSoup(getHTMLr, 'html.parser')
    containers = soupify.find("div",{"class":"pcontent"})
    if containers > 0: #if there are no available items, it returns 0
        #title
        title_container = containers.find("div", {"class":"pname"})
        title = title_container.text.strip()
        #price
        price_container = containers.find("div", {"class":"pprice"})
        price = price_container.text.replace(".","").replace(",",".")
        price_strip = re.sub('[^0-9.]', '', price)
        #price per GB
        priceGB = float(price_strip)/int(size) #*1000 for per TB

        #link
        href_container = soupify.find('a',{'class':'phover-complete-link'})['href']
        href = href_container

        #print title
        #print size +" GB"
        #print price_strip + " EUR"
        #print currentDate
        #print priceGB
        #print href

        store = "Mindfactory"

        mycursor = mydb.cursor()
        sql = "INSERT INTO ssd (name, size, price, date, priceGB, href, store) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (title, size, price_strip, currentDate, priceGB, href, "Mimovrste")
        mycursor.execute(sql,val)
        mydb.commit()
        print(mycursor.rowcount, "SSDs added!")

    else:
        print "Something failed for " + size + " GB SSD"