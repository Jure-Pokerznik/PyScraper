# -*- coding: utf-8 -*- #declared to avoid issues with eur sign in python 2.7
# Import required libraries. Install using C:\Python27\python.exe -m pip install xy (Windows)
from bs4 import BeautifulSoup
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper (pip install bs4)
import re #regex
from datetime import datetime, timedelta #allows us to add current time
import mysql.connector

# MySQL Config
config = {
    'user':'yuri',
    'password':'STyecJowufkuph9',
    'host':'192.168.178.77',
    'database':'bbscraper'
}
mydb = mysql.connector.connect(**config)
# Insert all available pages into a list we can work with later

root = "https://www.bigbang.si"
mainlink = "https://www.bigbang.si/prenosni-racunalniki"
base_url = mainlink + "?pricefrom=170&priceto=3560&OrderBy=25" #low to high
getHTML = requests.get(mainlink).content
soupify = BeautifulSoup(getHTML, 'html.parser')
max_pages = soupify.find_all("a",{"class":"number"})
num_pages = int(max_pages[-1].text.strip())
pages = ["{}&pagenumber={}".format(base_url, str(page)) for page in range(1, num_pages + 1)]

# Dates
currentDate = datetime.now().strftime('%Y-%m-%d') #TODO: time?
yesterday = datetime.today() - timedelta(1)
ydayDate = yesterday.strftime('%Y-%m-%d')

for page in pages:
    getpage = requests.get(page).content
    soup = BeautifulSoup(getpage, 'html.parser')
    boxes = soup.find_all('div',{"class":'product-box'}) #all products boxes
    for box in boxes:
        # Name
        productname = box.find('img')['alt']
        # Product Image #TODO: Fix images!
        productimage = box.find('span',{"class":'imgWrap'}).find('img')['data-src']
        # Product Type
        producttype = box.find('h3').find('span').text.strip() #TODO: UTF-8 
        # Price
        if not box.find('strong',{"class":'newPrice'}):
            productprice1 = box.find('strong',{"class":'razPrice'}).text.strip() #find razPrice
            obroki = int(productprice1[:2])
            razrez = float(productprice1[3:-5] + "." + productprice1[-4:-2]) 
            productprice = float(obroki * razrez)
        else:
            productprice1 = box.find('strong',{"class":'newPrice'}).text.strip()
            productprice = productprice1[0:-5] + "." + productprice1[-4:-2]
        # Product Link
        productlink = root + box.find('a')['href']
        # Product ID
        productid = int(productlink[-6:]) #get last 6 numbers which are IDs in this case

        oldPrice = "SELECT productprice, productid FROM bb WHERE productid = %s"
        sqldata = (productid,) #This comma was the end of me.
        mycursor = mydb.cursor()
        mycursor.execute(oldPrice,sqldata)
        myresult = mycursor.fetchall()
        for x in myresult:  # fetch only the ID and if price from yday date === todays price then skip otherwise write new price
            if float(x[0]) == float(productprice):  # x[0] is the actual row output, while x returns row information as (Decimal('xxx.yy'),)
                pass
            else:
                print "The price has changed, inserting into database..."
                mycursor = mydb.cursor()
                sql = "INSERT INTO bb (productid, productname, productprice, productlink, productimage, producttype, date) VALUES (%s, %s, %s, %s, %s, %s, %s)"
                val = (productid, productname, productprice, productlink, productimage, producttype, currentDate)
                mycursor.execute(sql,val)
                mydb.commit()
                print(mycursor.rowcount, "Item added!")

# Close connection to database
mydb.close()