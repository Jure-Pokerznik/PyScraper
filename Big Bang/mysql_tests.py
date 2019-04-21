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
#num_pages = int(max_pages[-1].text.strip())
pages = ["{}&pagenumber={}".format(base_url, str(page)) for page in range(1, 2 + 1)]

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
            obroki = int(productprice1[:2]) #TODO: Works, but fix numbers.
            razrez = float(productprice1[3:-5] + "." + productprice1[-4:-2]) 
            productprice = obroki * razrez
        else:
            productprice1 = box.find('strong',{"class":'newPrice'}).text.strip()
            productprice = productprice1[0:-5] + "." + productprice1[-4:-2]
        # Product Link
        productlink = root + box.find('a')['href']
        # Product ID
        productid = productlink[-6:] #get last 6 numbers which are IDs in this case

       
        #THIS WORKS
        ydayPrice = "SELECT productprice FROM bb WHERE productid=%s AND date=%s"
        sqldata = (productid, currentDate) #TODO: We need to hcange this to yesterdays date.
        # TODO: https://www.w3schools.com/python/python_mysql_where.asp
        mycursor = mydb.cursor()
        mycursor.execute(ydayPrice,sqldata)
        myresult = mycursor.fetchall()
        for x in myresult:  # fetch only the ID and if price from yday date === todays price then skip otherwise write new price
            #print(x[0])
            #print productprice
            if float(x[0]) == float(productprice):
                print "The price of this product didn't change, skipping database entry..."
                continue
            else:
                print "The price has changed, inserting into database..."
                #TODO: Insert SQL here!
        """
        cursor.execute(ydayPrice)
        records = cursor.fetchall()
        for row in records: 
            print row[0] + "row0"
        if ydayPrice == productprice:
            print ydayPrice
            print "if"
        else:
            print ydayPrice
            print "else"
            """

     
        # Product Availability
        #TODO:Add AvailabilityW
        ## Print Data ##
        #print productid + " " + productname + " " + productprice + " " + productlink + productimage + "\n"
        #print productid
        #print productname
        #print productprice
        #print productlink
        #print productimage
        #print producttype
        #mycursor = mydb.cursor()
        #sql = "INSERT INTO bb (productid, productname, productprice, productlink, productimage, producttype, date) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        #val = (productid, productname, productprice, productlink, productimage, producttype, currentDate)
        #mycursor.execute(sql,val)
        #mydb.commit()
        #print(mycursor.rowcount, "Item added!")

# Close connection to database
mydb.close()