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

linksAMD = [ 
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=2", #2 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=4", #4 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=6", #6 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=8", #8 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=12", #12 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=16", #16 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=24", #24 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=32", #32 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=amd&p%5BTHREADS%5D%5B%5D=64" #64 Thread
]
linksIntel = [
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=2", #2 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=4", #4 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=6", #6 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=8", #8 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=12", #12 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=16", #16 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=24", #24 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=32", #32 Thread
    "https://www.mimovrste.com/procesorji?o=_price&b%5B%5D=intel&p%5BTHREADS%5D%5B%5D=64" #64 Thread
]
threads = ["2", "4", "6", "8", "12", "16", "24", "32", "64"]

currentDate = datetime.now().strftime('%Y-%m-%d')

for link, thread in zip(linksAMD, threads): 
    getHTML = requests.get(link)
    getHTMLr = getHTML.content # This will give you raw HTML from getLink1TB
    soup = BeautifulSoup(getHTMLr, 'html.parser')
    soupify = soup.find("main",{"class":"main-container clearfix"})
    #print soupify
    titles_containter = soupify.find_all("h3",{"class":"lst-product-item-title"})
    prices_container = soupify.find_all("span",{"class":"lst-product-item-price-value"})
    
    #if 'odprta' in titles_containter:
    #    print "open box, skipping"
    #else:
    for titles, prices, hrefy in zip(titles_containter, prices_container, soupify.find_all("a",{"class":"lay-block"}, href=True)):
        title = titles.text.strip()
        href_container = soupify.find('a',{'class':'lay-block'})['href']
        if "odprta" not in title:
            price = prices.text.strip()
            #price_container = title.find("span", {"class":"lst-product-item-price-value"})
            price_replace = price.replace(".","").replace(",",".")
            price_strip = re.sub('[^0-9.]', '', price_replace)
            print title
            print thread
            print price_strip
            price_percore = float(price_strip)/int(thread)
            print price_percore
            store = "Mimovrste"
            href = "https://www.mimovrste.com" + hrefy['href']
            print href
            brand = "AMD"
            mycursor = mydb.cursor()
            sql = "INSERT INTO cpu (name, threads, price, date, price_percore, href, store, brand) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
            val = (title, thread, price_strip, currentDate, price_percore, href, store, brand)
            mycursor.execute(sql,val)
            mydb.commit()
            print(mycursor.rowcount, "Hard drives added!")

        else: 
            print "Open box, skipping..."

for link, thread in zip(linksIntel, threads): 
    getHTML = requests.get(link)
    getHTMLr = getHTML.content
    soup = BeautifulSoup(getHTMLr, 'html.parser')
    soupify = soup.find("main",{"class":"main-container clearfix"}) 
    titles_containter = soupify.find_all("h3",{"class":"lst-product-item-title"})
    prices_container = soupify.find_all("span",{"class":"lst-product-item-price-value"})
    for titles, prices, hrefy in zip(titles_containter, prices_container, soupify.find_all("a",{"class":"lay-block"}, href=True)):
        title_n = titles.text.strip()
        title = re.sub('[^A-Za-z0-9 -]+', '', title_n) #replace all non letter or number characters with nothing
        #print href_container
        if "odprta" not in title:
            price = prices.text.strip()
            #price_container = title.find("span", {"class":"lst-product-item-price-value"})
            price_replace = price.replace(".","").replace(",",".")
            price_strip = re.sub('[^0-9.]', '', price_replace)
            print title
            print thread
            print price_strip
            price_percore = float(price_strip)/int(thread)
            print price_percore
            store = "Mimovrste"
            href = "https://www.mimovrste.com" + hrefy['href']
            print href
            brand = "Intel"
            mycursor = mydb.cursor()
            sql = "INSERT INTO cpu (name, threads, price, date, price_percore, href, store, brand) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
            val = (title, thread, price_strip, currentDate, price_percore, href, store, brand)
            mycursor.execute(sql,val)
            mydb.commit()
            print(mycursor.rowcount, "Hard drives added!")

        else: 
            print "Open box, skipping..."