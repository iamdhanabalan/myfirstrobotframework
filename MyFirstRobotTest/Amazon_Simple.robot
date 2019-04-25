*** Settings ***
Documentation    Sample test using selenium libraries
Library         Selenium2Library
Test Teardown   Close Browser
 
*** Test Cases ***
I should be able to view iPhone products via search
    Open Browser    https://amazon.com    Chrome
    Input Text    id=twotabsearchtextbox    iphone
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains    results for "iphone"
    
    