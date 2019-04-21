# PyScraper
# THIS IS STILL WIP

Trying to create a working scraper for certain websites outputing cheapest prices for certain items. Plans for Mimovrste and Mindfactory. Scripts are meant to go in crontab to run daily/weekly and dump prices into a local database using MySQL from which we can later fetch results or even create a PHP website showing these prices in some form or another. 

## Languages and programs used

* Python
* PHP and PHPMyAdmin
* MySQL
* Adobe Illustrator
* Visual Studio Code
* Morris.js

### Import

I imported the following: 
* re
* datetime
* requests (pip install requests)
* bs4 (BeautifulSoup) (pip install bs4)
* mysql.connector (pip install mysql-connector-python)

## Changelog

### April 20, 2019

* Added Big Bang Scraper

### November 10, 2018

* Fixed store name in mindfactory-py
* Added scripts for HDDs and SSDs from Computer Universe

### November 7, 2018

* Added scripts for scraping HDDs and SSDs from Mindfactory

### October 15, 2018

* Fixed missing 960GB SSD entry

### October 3, 2018

* HDD and SSD trends with charts

### September 24, 2018

* Fixed processor scrapper to show correct URLs

### September 22, 2018

* Added processor scraper for mimovrste
* Updated some website code to have subpages and basic output tables

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
+ Trends - Min, Average and Max prices for GPUs

## Working on

+ Create php site that will display all data 
+ Seperate website for Big Bang only, where we'll be able to find prices for -everything-

