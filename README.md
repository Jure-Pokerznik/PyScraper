# PyScraper
# THIS IS STILL WIP

Trying to create a working scraper for certain websites outputing cheapest prices for certain items. Plans for Mimovrste and Mindfactory. Scripts are meant to go in crontab to run daily/weekly and dump prices into a local database using MySQL from which we can later fetch results or even create a PHP website showing these prices in some form or another. 

## Languages and programs used

* Python
* PHP and PHPMyAdmin
* MySQL
* Adobe Illustrator
* Visual Studio Code

### Import

I imported the following: 
* re
* datetime
* requests (pip install requests)
* bs4 (BeautifulSoup) (pip install bs4)
* mysql.connector (pip install mysql-connector-python)

## Changelog

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
+ Bootstrap website

## Working on
+ Create php site that will display all data 