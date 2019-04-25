*** Settings ***
Documentation    Sample test using selenium libraries
Library         Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${BROWSER}        Chrome
${URL}      http://demo.guru99.com/V4/
 
*** Test Cases ***
Sample Navigate to guru website
    Open Browser And Go To Page
    
*** Keywords ***
Open Browser And Go To Page
  Open Browser    ${URL}    ${BROWSER}
  