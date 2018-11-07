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

DDR4 = [ 
    "https://www.mimovrste.com/ram-za-osebne-racunalnike?o=_price&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm%20(slot)&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm&p%5BMEMORY_TYPE%5D%5B%5D=ddr4&p%5BMEMORY_CONFIGURATION%5D%5B%5D=1%20x%204gb", #4GB
    "https://www.mimovrste.com/ram-za-osebne-racunalnike?o=_price&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm%20(slot)&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm&p%5BMEMORY_TYPE%5D%5B%5D=ddr4&p%5BMEMORY_CONFIGURATION%5D%5B%5D=1%20x%208gb&p%5BMEMORY_CONFIGURATION%5D%5B%5D=2%20x%204gb", #8GB
    "https://www.mimovrste.com/ram-za-osebne-racunalnike?o=_price&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm%20(slot)&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm&p%5BMEMORY_TYPE%5D%5B%5D=ddr4&p%5BMEMORY_CONFIGURATION%5D%5B%5D=1%20x%2016gb&p%5BMEMORY_CONFIGURATION%5D%5B%5D=2%20x%208&p%5BMEMORY_CONFIGURATION%5D%5B%5D=4%20x%204gb&p%5BMEMORY_CONFIGURATION%5D%5B%5D=2%20x%208gb", #16GB
    "https://www.mimovrste.com/ram-za-osebne-racunalnike?o=_price&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm%20(slot)&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm&p%5BMEMORY_TYPE%5D%5B%5D=ddr4&p%5BMEMORY_CONFIGURATION%5D%5B%5D=1%20x%2032gb&p%5BMEMORY_CONFIGURATION%5D%5B%5D=2%20x%2016gb&p%5BMEMORY_CONFIGURATION%5D%5B%5D=4%20x%208gb", #32GB
    "https://www.mimovrste.com/ram-za-osebne-racunalnike?o=_price&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm%20(slot)&p%5BMEMORY_TYPE%5D%5B%5D=ddr4%20dimm&p%5BMEMORY_TYPE%5D%5B%5D=ddr4&p%5BMEMORY_CONFIGURATION%5D%5B%5D=4%20x%2016gb" #64GB 
]

size = ["4", "8", "16", "32", "64"]

currentDate = datetime.now().strftime('%Y-%m-%d')

for link, size in zip(DDR4, size): 
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
            print size
            print price_strip
            price_pergb = float(price_strip)/int(size)
            print price_pergb
            store = "Mimovrste"
            href = "https://www.mimovrste.com" + hrefy['href']
            print href
            mycursor = mydb.cursor()
            sql = "INSERT INTO ram (name, size, price, date, price_pergb, href, store) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            val = (title, size, price_strip, currentDate, price_pergb, href, store)
            mycursor.execute(sql,val)
            mydb.commit()
            print(mycursor.rowcount, "Hard drives added!")

        else: 
            print "Open box, skipping..."
