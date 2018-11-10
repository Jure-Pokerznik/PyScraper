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
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:120+GB", #120
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:128+GB", #128
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:240+GB", #240
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:250+GB", #250
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:256+GB", #256
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:480+GB", #480
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:500+GB", #500
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:512+GB", #512
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity:960+GB", #960
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity%3a1.0+TB", #1000
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity%3a1.92+TB||f_Capacity:2+TB", #2000
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity%3a3.84+TB||f_Capacity:4+TB", #4000
    "https://www.computeruniverse.net/en/c/hardware-components/solid-state-drives-ssd?orderby=10&specs=f_Form+factor%3a2.5%22%7c%7cf_Interface%3aSATA3%7c%7cf_Interface%3aSATA%7c%7cf_Interface%3aSATA2%7c%7c||f_Capacity%3a7.68+TB||f_Capacity:8+TB" #8000
]



sizes = ["120", "128", "240", "250", "256", "480", "500", "512", "960", "1000", "2000", "4000", "8000"]

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
        priceGB = float(price_strip[:6])/int(size)

        #link
        #href_container = soupify.find('a',{'class':'phover-complete-link'})['href']
        href_container = containers.find('a',{'class':''})['href']
        href =  "https://www.computeruniverse.net" + href_container
        #<img alt="Bild von Intenso Desktop HDD Retail Kit 5TB" src="/images/240/9069120682DAF497BB374B0C916117DF.jpg" title="Intenso Desktop HDD Retail Kit 5TB">
        store = "Computer Universe"
        print title
        print size + "GB"
        print price_strip + " EUR"
        print currentDate
        print priceGB
        print href
        
        
        
        mycursor = mydb.cursor()
        sql = "INSERT INTO ssd (name, size, price, date, priceGB, href, store) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (title, size, price_strip, currentDate, priceGB, href, store)
        mycursor.execute(sql,val)
        mydb.commit()
        print(mycursor.rowcount, "Hard drives added!")

    else:
        print "Size not added: " + size + " TB"
    # Add data to DB