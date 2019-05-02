from robot.libraries.BuiltIn import BuiltIn
from Selenium2Library import Selenium2Library
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

class CustomLibrary:

    # def __init__(self):
    #     ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def Open_My_Browser(self):
        # if browsertype == "Firefox":
        #     browser = webdriver.Firefox()
        # elif browsertype == "Chrome":
        #     browser = webdriver.Chrome()
        # elif browsertype == "Internet Explorer":
        #     browser = webdriver.Ie()
        # else:
        browser = webdriver.Chrome()
        browser.maximize_window()
        browser.get("http://demo.guru99.com/V4/")
        time.sleep(5)