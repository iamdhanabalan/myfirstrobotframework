*** Settings ***
Documentation    Test the Guru99 Banking Website
Library         Selenium2Library

*** Variables ***
${page_title}    Guru99 Bank Home Page
${obj_username}    xpath=//html/body/form/table/tbody/tr[1]/td[2]/input    
${obj_password}    xpath=//html/body/form/table/tbody/tr[2]/td[2]/input
${obj_loginButton}    xpath=//html/body/form/table/tbody/tr[3]/td[2]/input[1]
${obj_managerid}    xpath=//html/body/table/tbody/tr/td/table/tbody/tr[3]/td
${obj_logout}    xpath=//html/body/div[3]/div/ul/li[15]/a
${username}    mngr191642
${password}    tAvetEj

*** Test Cases ***
Validate the login page title
    Open the Guru99 website
    Title should contain Guru99
    Close Browser
    
The user should be able to login and view the dashboard
    Open the Guru99 website
    Fill in the login field with    ${username}
    Fill in the password field with    ${password}     
    Click on the login button
    Verify if the dashboard is displayed with managerid
    Logout the session
    Close Browser
    
*** Keywords ***
Open the Guru99 website
    Open Browser    http://demo.guru99.com/V4/    Chrome
    Maximize Browser Window
Title should contain Guru99
    Title Should Be    ${page_title}
    Close Browser 
Fill in the login field with
    [Arguments]    ${username}
    Input Text    ${obj_username}    ${username}
Fill in the password field with
    [Arguments]    ${password}
    Input Text    ${obj_password}    ${password}
    Sleep    2s
Click on the login button
    Click Button    ${obj_loginButton}    
Verify if the dashboard is displayed with managerid
    Page Should Contain Element    ${obj_managerid}
Logout the session
    Click Link    ${obj_logout}    