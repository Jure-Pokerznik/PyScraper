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
    'database':'computeruniverse_scraper'
}
mydb = mysql.connector.connect(**config)

links = [
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a1.0+TB||f_Form+factor:3.5%22", #1 
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a2.0+TB||f_Form+factor:3.5%22", #2
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a3.0+TB||f_Form+factor:3.5%22", #3
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a4.0+TB||f_Form+factor:3.5%22", #4
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a5.0+TB||f_Form+factor:3.5%22", #5
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a6.0+TB||f_Form+factor:3.5%22", #6
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a8.0+TB||f_Form+factor:3.5%22", #8
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a10.0+TB||f_Form+factor:3.5%22",#10
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a12.0+TB||f_Form+factor:3.5%22",#12
    "https://www.computeruniverse.net/en/c/hardware-components/sata-serial-ata-festplatten?orderby=10&specs=f_Capacity%3a14.0+TB||f_Form+factor:3.5%22" #14
]

sizes = ["1", "2", "3", "4", "5", "6", "8", "10", "12", "14"] #sizes in terabytes for supplied links

currentDate = datetime.now().strftime('%Y-%m-%d')

for link, size in zip(links, sizes): 
    getHTML = requests.get(link)
    getHTMLr = getHTML.content # This will give you raw HTML
    soupify = BeautifulSoup(getHTMLr, 'html.parser')
    containers = soupify.find("div",{"class":"product-item"})
    #print containers
    if containers > 0: 
        #title
        title_container = containers.find("span", {"class":"ellipsisBlock"})
        title = title_container.text.strip()
        #price
        price_container = containers.find("span", {"class":"price actual-price"})
        price = price_container.text.replace(" ","")
        price_strip = re.sub('[^0-9.]', '', price) #strip euro sign
        
        #price per TB
        priceTB = float(price_strip[:6])/int(size) #strips only first 6 numbers from float to avoid issues

        #link
        href_container = containers.find('a',{'class':''})['href']
        href =  "https://www.computeruniverse.net" + href_container
        store = "Computer Universe"
        print title
        print size + "TB"
        print price_strip + " EUR"
        print currentDate
        print priceTB
        print href
        
        
        
        mycursor = mydb.cursor()
        sql = "INSERT INTO hdd (name, size, price, date, priceTB, href, store) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (title, size, price_strip, currentDate, priceTB, href, store)
        mycursor.execute(sql,val)
        mydb.commit()
        print(mycursor.rowcount, "Hard drives added!")

    else:
        print "Size not added: " + size + " TB"