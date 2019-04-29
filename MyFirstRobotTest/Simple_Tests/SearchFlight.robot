*** Settings ***
Documentation    Sample tests
Library     Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${URL}          http://blazedemo.com/
${BROWSER}      Chrome

*** Test Cases ***
The user can search for flights
    Open Home Page
    Select Departure City   Paris
    Select Destination City    London
    Search For Flights
    There are available Flights

*** Keywords ***
Open Home Page
    Open browser    ${URL}   ${BROWSER}

Select Departure City
    [Arguments]      ${departure_city}
     Select From List By Value   xpath://select[@name='fromPort']  ${departure_city}

Select Destination City
    [Arguments]      ${destination_city}
    Select From List by Value   xpath://select[@name='toPort']    ${destination_city}
    Set Selenium Implicit Wait    1000    

Search For Flights
    Click Button    xpath://html/body/div[3]/form/div/input

There are available Flights
    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty     ${flights}