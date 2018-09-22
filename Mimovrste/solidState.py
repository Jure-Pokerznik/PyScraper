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



links = [
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=120&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=120", #120GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=128&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=128", #128GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=240&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=240", #240GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=250&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=250", #250GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=256&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=256", #256GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=480&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=480", #480GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=500&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=500", #500GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=512&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=512", #512GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=960&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=960", #960GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=1000&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=1024", #1000GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=2000&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=2100", #2000GB
    "https://www.mimovrste.com/ssd-diski?o=_price&p%5BHDD_FORMATE%5D%5B%5D=2.5%E2%80%9C&p%5BINTERFACE%5D%5B%5D=sata&p%5BINTERFACE%5D%5B%5D=sata%206%20gbs&p%5BINTERFACE%5D%5B%5D=sata%20iii&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=4000&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=4200" #4000GB  
]

sizes = ["120", "128", "240", "250", "256", "480", "500", "512", "960", "1000", "2000", "4000", "8000"]

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
        price = price_container.text.replace(".","").replace(",",".")
        price_strip = re.sub('[^0-9.]', '', price)
        #price per GB
        priceGB = float(price_strip)/int(size) #*1000 for per TB

        #link
        href_container = soupify.find('a',{'class':'lay-block'})['href']
        href = "https://www.mimovrste.com" + href_container

        #print title
        #print size +" GB"
        #print price_strip + " EUR"
        #print currentDate
        #print priceGB
        #print href

        mycursor = mydb.cursor()
        sql = "INSERT INTO ssd (name, size, price, date, priceGB, href, store) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (title, size, price_strip, currentDate, priceGB, href, "Mimovrste")
        mycursor.execute(sql,val)
        mydb.commit()
        print(mycursor.rowcount, "SSDs added!")

    else:
        print "Something failed for " + size + " GB SSD"