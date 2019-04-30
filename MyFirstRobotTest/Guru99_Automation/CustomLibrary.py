from robot.libraries.BuiltIn import BuiltIn
from Selenium2Library import Selenium2Library
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

class CustomLibrary:

def Open_My_Browser(url,browsertype):
    if browsertype == "Firefox":
        browser = webdriver.Firefox()
    elif browsertype == "Chrome":
        browser = webdriver.Chrome()
    elif browsertype == "Internet Explorer":
        browser = webdriver.Ie()
    else:
        browser = webdriver.Chrome()
    browser.maximize_window()
    browser.get(url)
    # browser.close()

# Open_My_Browser("http://www.python.org","Chrome")
# print("Completed")