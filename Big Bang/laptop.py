# Import required libraries
from bs4 import BeautifulSoup
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper (pip install bs4)
import re #regex
from datetime import datetime #allows us to add current time

# Insert all available pages into a list we can work with later

root = "https://www.bigbang.si"
mainlink = "https://www.bigbang.si/prenosni-racunalniki"
base_url = mainlink + "?pricefrom=170&priceto=3560&OrderBy=25" #low to high
getHTML = requests.get(mainlink).content
soupify = BeautifulSoup(getHTML, 'html.parser')
max_pages = soupify.find_all("a",{"class":"number"})
num_pages = int(max_pages[-1].text.strip())
url_list = ["{}&pagenumber={}".format(base_url, str(page)) for page in range(1, num_pages + 1)]

examplelink = "https://www.bigbang.si/prenosni-racunalniki?pricefrom=170&priceto=3560&OrderBy=25&pagenumber=11"
currentDate = datetime.now().strftime('%Y-%m-%d') #TODO: time?
getpage = requests.get(examplelink).content
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
        razrez = float(productprice1[3:5] + "." + productprice1[6:8]) 
        productprice = obroki * razrez
    else:
        productprice1 = box.find('strong',{"class":'newPrice'}).text.strip()
        productprice = productprice1[:4] + "." + productprice1[5:7]
    # Product Link
    productlink = root + box.find('a')['href']
    # Product ID
    productid = productlink[-6:] #get last 6 numbers which are IDs in this case
    # Product Availability
    #TODO:Add Availability
    ## Print Data ##
    print productid + " " + productname + " " + productprice + " " + productlink + productimage + "\n"

    #picturecont = box.find("h3").text.strip()
    
# href_container = soupify.find('a',{'class':'phover-complete-link'})['href']

# title_container = containers.find("h3", {"class":"lst-product-item-title"})
        #title = title_container.text.strip()

#print box
#for url in url_list:
    #getURL = requests.get(url).content
    #soupe = BeautifulSoup(getURL, 'html.parser')
    #boxes = soupe.find('div',{"class":'tableRow'})
    #boxtitle = boxes.find('div',{"class":'product-box'})
    #boxtitle = boxes.find('a')
    #print boxes
    #boxtitle2 = boxtitle.find(print boxtitle
    #print containers
    #for container in containers:
    #    print container
    #container_title = containers.find("a",{"title"})
    #print container_title
    #container_title = containers.find_all("a",{"title"})
    #print container_title
    #for container in containers:
    #    container_title = containers.find("a",{"title"})
     #   print container_title


        #price_container = containers.find("span", {"class":"lst-product-item-price-value"})
    #for container in containers:
        ##container_title = container.find_all("a",{"title"})
        #print container_title
        #print container
        #############################################################container_title = soupe.find('h3')
        #container_link = soupe.find('div',{'class':'productImage'})['href']
        #print container_title.text.strip()
        #print containers