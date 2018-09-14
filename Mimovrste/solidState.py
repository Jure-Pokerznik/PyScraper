# -*- coding: utf-8 -*- #declared to avoid issues with eur sign in python 2.7
import requests  # python-requests.org (pip install requests)
from bs4 import BeautifulSoup # scraper
import re #regex
from datetime import datetime #allows us to add current time
import mysql.connector #allows connection to database. #pip install mysql-connector-python
from mysql.connector import errorcode

config = {
    'user':'yuri',
    'password':'STyecJowufkuph9',
    'host':'192.168.178.55',
    'database':'mimovrste_scraper'
}


links = {
    
}