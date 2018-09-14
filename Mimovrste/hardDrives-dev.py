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

#try:
#  cnx = mysql.connector.connect(**config)
#except mysql.connector.Error as err:
#  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
#    print("Something is wrong with your user name or password")
#  elif err.errno == errorcode.ER_BAD_DB_ERROR:
#    print("Database does not exist")
#  else:
#    print(err)
#else:
#  cnx.close()

# This is a scraper for mimovrste.com; We'll be finding the cheapest price of hard drives in each size from 1TB to 12TB.

# Get websites for each size of hard drive TODO: Change to array
links = [
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=1111&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',     #1TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=1800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=2222&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #2TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=2800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=3333&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #3TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=3800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=4444&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #4TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=4800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=5555&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #5TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=5555&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=6666&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #6TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=6666&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=8888&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #8TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=9999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=10101&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C',    #10TB
    'https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=11111&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12121&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C'   #12TB
    #'https://www.mimovrste.com/trdi-diski-hdd?p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=13333&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=15000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C'             #Non-existant 14TB
]

link = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=1111&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"


getHTML = requests.get(link)
getHTMLr = getHTML.content # This will give you raw HTML from getLink1TB
soupify = BeautifulSoup(getHTMLr, 'html.parser')
containers = soupify.find("div",{"class":"lst-product-item-body"})
#title
title_container = containers.find("h3", {"class":"lst-product-item-title"})
title = title_container.text.strip()
#price
price_container = containers.find("span", {"class":"lst-product-item-price-value"})
price = price_container.text.replace(",",".")
price_strip = re.sub('[^0-9.]', '', price)
#availability
availability_container = containers.find("h2", {"class":"mt-0 tooltip-heading"})
availability = availability_container.text

#my_new_string = re.sub('[^a-zA-Z0-9 \n\.]', '', my_str)
print title
print price_strip
print availability


#findPrice1TB = soup1tb.find_all('span') # Searches for all spans and puts them in an array
## Get Name
#getName1TB = soup1tb.find_all('a')
#getLine1TB = getName1TB[113]
#getLine1TBr = str(getLine1TB)
#name1TB = re.sub('<[^<]+?>', '', getLine1TBr)
#print name1TB

# Get Price
#getPriceLine1TB = findPrice1TB[186]
#price1TB = str(getPriceLine1TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','').replace(",",".")
#print price1TB

#

## Get current date
#currentDate = datetime.now().strftime('%Y-%m-%d')
#print currentDate
## Add data to DB
#mydb = mysql.connector.connect(**config)
#mycursor = mydb.cursor()
#sql = "INSERT INTO hdd (name, size, price, date) VALUES (%s, %s, %s, %s)"
#val1 = (name1TB, "1TB", price1TB, currentDate)
#val2 = (name2TB, "2TB", price2TB, currentDate)
#val3 = (name3TB, "3TB", price3TB, currentDate)
#val4 = (name4TB, "4TB", price4TB, currentDate)
#val5 = (name5TB, "5TB", price5TB, currentDate)
#val6 = (name6TB, "6TB", price6TB, currentDate)
#val8 = (name8TB, "8TB", price8TB, currentDate)
#val10 = (name10TB, "10TB", price10TB, currentDate)
#val12 = (name12TB, "12TB", price12TB, currentDate)
#mycursor.execute(sql,val1)
#mycursor.execute(sql,val2)
#mycursor.execute(sql,val3)
#mycursor.execute(sql,val4)
#mycursor.execute(sql,val5)
#mycursor.execute(sql,val6)
#mycursor.execute(sql,val8)
#mycursor.execute(sql,val10)
#mycursor.execute(sql,val12)
#mydb.commit()
##print(mycursor.rowcount, "Hard drives added!")