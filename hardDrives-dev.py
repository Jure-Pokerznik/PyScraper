# -*- coding: utf-8 -*- #declared to avoid issues with eur sign in python 2.7
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper
import re #regex
from datetime import datetime #allows us to add current time

# This is a scraper for mimovrste.com; We'll be finding the cheapest price of hard drives in each size from 1TB to 12TB.

# Get websites for each size of hard drive TODO: Change to array
getLink1TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink6TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=5555&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink8TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=6666&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink10TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=9999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink12TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=11111&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"





#1TB
getHTML1TB = requests.get(getLink1TB)
getHTML1TBr = getHTML1TB.content # This will give you raw HTML from getLink1TB
soup1tb = BeautifulSoup(getHTML1TBr, 'html.parser')
findPrice1TB = soup1tb.find_all('span') # Searches for all spans and puts them in an array
# Get Name
getName1TB = soup1tb.find_all('a')
getLine1TB = getName1TB[113]
getLine1TBr = str(getLine1TB)
name1TB = re.sub('<[^<]+?>', '', getLine1TBr)
#print name1TB

# Get Price
getPriceLine1TB = findPrice1TB[186]
price1TB = str(getPriceLine1TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price1TB
#print findPrice1TB
# Get current date
currentDate = datetime.now().strftime('%Y-%m-%d')
#print currentDate
# Add data to DB
#mydb = mysql.connector.connect(**config)
#mycursor = mydb.cursor()
#sql = "INSERT INTO hdd (name, size, price, date) VALUES (%s, %s, %s, %s)"
#val = (name1TB, "1TB", price1TB, currentDate)
#mycursor.execute(sql,val)
#mydb.commit()
#print(mycursor.rowcount, "Hard drive added!")