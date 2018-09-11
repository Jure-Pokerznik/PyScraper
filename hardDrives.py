# -*- coding: utf-8 -*- #declared to avoid issues with eur sign in python 2.7
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper
import re #regex
from datetime import datetime #allows us to add current time
import mysql.connector #allows connection to database. #pip install mysql-connector-python
from mysql.connector import errorcode
# user: yuri pass: STyecJowufkuph9

#DB Config
config = {
    'user':'yuri',
    'password':'STyecJowufkuph9',
    'host':'192.168.178.55',
    'database':'mimovrste_scraper'
}
#test connection to DB

try:
  cnx = mysql.connector.connect(**config)
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Something is wrong with your user name or password")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)
else:
  cnx.close()

# This is a scraper for mimovrste.com; We'll be finding the cheapest price of hard drives in each size from 1TB to 12TB.

# Get websites for each size of hard drive TODO: Change to array
getLink1TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink2TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=1800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink3TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=2800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink4TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=3800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink5TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=4800&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink6TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=5555&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink8TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=6666&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink10TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=9999&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"
getLink12TB = "https://www.mimovrste.com/trdi-diski-hdd?o=_price&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmin%5D=11111&p%5BCAPACITY_HARD_DRIVE_ROM%5D%5Bmax%5D=12000&p%5BHDD_FORMATE%5D%5B%5D=3.5%E2%80%9C"

# Get HTML code from links

#!!! ADDING +2 to all price values to fix issues
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
print name1TB

# Get Price
getPriceLine1TB = findPrice1TB[186]
price1TB = str(getPriceLine1TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price1TB
#2TB
getHTML2TB = requests.get(getLink2TB)
getHTML2TBr = getHTML2TB.content
soup2tb = BeautifulSoup(getHTML2TBr, 'html.parser')
findPrice2TB = soup2tb.find_all('span')
# Get Name
getName2TB = soup2tb.find_all('a')
getLine2TB = getName2TB[112]
getLine2TBr = str(getLine2TB)
name2TB = re.sub('<[^<]+?>', '', getLine2TBr)
print name2TB

# Get Price
getPriceLine2TB = findPrice2TB[186]
price2TB = str(getPriceLine2TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price2TB
#3TB
getHTML3TB = requests.get(getLink3TB)
getHTML3TBr = getHTML3TB.content 
soup3tb = BeautifulSoup(getHTML3TBr, 'html.parser')
findPrice3TB = soup3tb.find_all('span')
# Get Name
getName3TB = soup3tb.find_all('a')
getLine3TB = getName3TB[113]
getLine3TBr = str(getLine3TB)
name3TB = re.sub('<[^<]+?>', '', getLine3TBr)
print name3TB

# Get Price
getPriceLine3TB = findPrice3TB[189]
price3TB = str(getPriceLine3TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price3TB
#4TB
getHTML4TB = requests.get(getLink4TB)
getHTML4TBr = getHTML4TB.content 
soup4tb = BeautifulSoup(getHTML4TBr, 'html.parser')
findPrice4TB = soup4tb.find_all('span')
# Get Name
getName4TB = soup4tb.find_all('a')
getLine4TB = getName4TB[108]
getLine4TBr = str(getLine4TB)
name4TB = re.sub('<[^<]+?>', '', getLine4TBr)
print name4TB

# Get Price
getPriceLine4TB = findPrice4TB[180]
price4TB = str(getPriceLine4TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price4TB

#5TB
getHTML5TB = requests.get(getLink5TB)
getHTML5TBr = getHTML5TB.content 
soup5tb = BeautifulSoup(getHTML5TBr, 'html.parser')
findPrice5TB = soup5tb.find_all('span')
# Get Name
getName5TB = soup5tb.find_all('a')
getLine5TB = getName5TB[102]
getLine5TBr = str(getLine5TB)
name5TB = re.sub('<[^<]+?>', '', getLine5TBr)
print name5TB

# Get Price
getPriceLine5TB = findPrice5TB[175]
price5TB = str(getPriceLine5TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price5TB


#6TB
getHTML6TB = requests.get(getLink6TB)
getHTML6TBr = getHTML6TB.content 
soup6tb = BeautifulSoup(getHTML6TBr, 'html.parser')
findPrice6TB = soup6tb.find_all('span')
# Get Name
getName6TB = soup6tb.find_all('a')
getLine6TB = getName6TB[102]
getLine6TBr = str(getLine6TB)
name6TB = re.sub('<[^<]+?>', '', getLine6TBr)
print name6TB

# Get Price
getPriceLine6TB = findPrice6TB[182]
price6TB = str(getPriceLine6TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price6TB
#8TB
getHTML8TB = requests.get(getLink8TB)
getHTML8TBr = getHTML8TB.content 
soup8tb = BeautifulSoup(getHTML8TBr, 'html.parser')
findPrice8TB = soup8tb.find_all('span')
# Get Name
getName8TB = soup8tb.find_all('a')
getLine8TB = getName8TB[100]
getLine8TBr = str(getLine8TB)
name8TB = re.sub('<[^<]+?>', '', getLine8TBr)
print name8TB

# Get Price
getPriceLine8TB = findPrice8TB[176]
price8TB = str(getPriceLine8TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price8TB
#10TB
getHTML10TB = requests.get(getLink10TB)
getHTML10TBr = getHTML10TB.content 
soup10tb = BeautifulSoup(getHTML10TBr, 'html.parser')
findPrice10TB = soup10tb.find_all('span')
# Get Name
getName10TB = soup10tb.find_all('a')
getLine10TB = getName10TB[95]
getLine10TBr = str(getLine10TB)
name10TB = re.sub('<[^<]+?>', '', getLine10TBr)
print name10TB

# Get Price
getPriceLine10TB = findPrice10TB[171]
price10TB = str(getPriceLine10TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price10TB
#12TB
getHTML12TB = requests.get(getLink12TB)
getHTML12TBr = getHTML12TB.content 
soup12tb = BeautifulSoup(getHTML12TBr, 'html.parser')
findPrice12TB = soup12tb.find_all('span')
# Get Name
getName12TB = soup12tb.find_all('a')
getLine12TB = getName12TB[90]
getLine12TBr = str(getLine12TB)
name12TB = re.sub('<[^<]+?>', '', getLine12TBr)
print name12TB

# Get Price
getPriceLine12TB = findPrice12TB[162]
price12TB = str(getPriceLine12TB).replace('<span class="lst-product-item-price-value">','').replace(' €</span>','') #TODO: Might need to replace , to . 
print price12TB





# Get current date
currentDate = datetime.now().strftime('%Y-%m-%d')
print currentDate
# Add data to DB
mydb = mysql.connector.connect(**config)
mycursor = mydb.cursor()
sql = "INSERT INTO hdd (name, size, price, date) VALUES (%s, %s, %s, %s)"
val1 = (name1TB, "1TB", price1TB, currentDate)
val2 = (name2TB, "2TB", price2TB, currentDate)
val3 = (name3TB, "3TB", price3TB, currentDate)
val4 = (name4TB, "4TB", price4TB, currentDate)
val5 = (name5TB, "5TB", price5TB, currentDate)
val6 = (name6TB, "6TB", price6TB, currentDate)
val8 = (name8TB, "8TB", price8TB, currentDate)
val10 = (name10TB, "10TB", price10TB, currentDate)
val12 = (name12TB, "12TB", price12TB, currentDate)
mycursor.execute(sql,val1)
mycursor.execute(sql,val2)
mycursor.execute(sql,val3)
mycursor.execute(sql,val4)
mycursor.execute(sql,val5)
mycursor.execute(sql,val6)
mycursor.execute(sql,val8)
mycursor.execute(sql,val10)
mycursor.execute(sql,val12)
mydb.commit()
#print(mycursor.rowcount, "Hard drives added!")