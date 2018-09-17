# PyScraper

Trying to create a working scraper for certain websites outputing cheapest prices for certain items. Plans for Mimovrste and Mindfactory. Scripts are meant to go in crontab to run daily/weekly and dump prices into a local database using MySQL from which we can later fetch results or even create a PHP website showing these prices in some form or another. 

## Languages and programs used

* Python
* PHP and PHPMyAdmin
* MySQL
* Adobe Illustrator
* Visual Studio Code


## What I've learned

Since this is how I'm learning python, I will be providing commands that I've learned and I'll also be able to reference this list if I forget how to do certain things.

### List(s)

I've figured out how lists work. In order to create a list, you save it into a variable that equals to square brackets with comma between each of them. 
Example:
mylist = ["1", "2", "3"]

### Coding

Since I'm using python 2.7, in order to avoid some issues with special characters such as euro sign (€), I apparently had to add the following:
-*- coding: utf-8 -*-
This set the coding to UTF-8, which understands these signs.

### Import

I had to add certain imports to get external libraries working. Some of these had to be installed, for which I used pip.
I imported the following: 
* re
* datetime
* requests (pip install requests)
* bs4 (BeautifulSoup) (pip install bs4)
* mysql.connector (pip install mysql-connector-python)

# THIS IS STILL WIP

## Changelog

### September 17, 2018

* Added links to hard drives and SSDs
* Updated database to allow for links and store names

### September 16, 2018

* Added scraper for SSDs
* Created 250x250 icons for CPU, Motherboard, Memory, HDD, SSD and Video Cards
* Added bootstrap and initial layout of the website

### September 15, 2018

* Created the initial state of the website that will show everything

### September 14, 2018

* Seperated scrapers into folders
* Finished Mimovrste scraper for lowest prices of hard drives

## TODO

+ Add handling for unavailable disks in the mimovrste-lowest-price
+ Add all available HDDs from mindfactory
+ Add SQL/CSV dump with daily prices
+ Replace any commas into underscores or similar characters
+ Statistics for all-time lowest / highest + average prices for each category
+ Bootstrap website

## Working on
+ Create php site that will display all data 