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
${obj_FTPage}     xpath=//html/body/div[3]/div/ul/li[10]/a
${obj_FT_Debit}     xpath=//html/body/table/tbody/tr/td/table/tbody/tr[4]/td[2]/input
${obj_FT_Credit}    xpath=//html/body/table/tbody/tr/td/table/tbody/tr[5]/td[2]/input
${obj_FT_Amt}   xpath=//html/body/table/tbody/tr/td/table/tbody/tr[6]/td[2]/input
${obj_FT_Desc}  xpath=//html/body/table/tbody/tr/td/table/tbody/tr[7]/td[2]/input
${obj_FT_submit}    xpath=//html/body/table/tbody/tr/td/table/tbody/tr[8]/td[2]/input[1]
${obj_FT_continue}  xpath=//html/body/table/tbody/tr[2]/td/table/tbody/tr[5]/td/p/a
${username}    mngr191642
${password}    tAvetEj
${accID}    59381
${cusID}    33538
${accIDCredit}  59380
${FT_amt}   100
${FT_desc}  TestDhanaRobot

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
    log to console  User logged in successfully!
Logout the session
    Click Link    ${obj_logout}
Initiate and Confirm the Fund Transfer to the account
    [Arguments]  ${accIDCredit}
    click link  ${obj_FTPage}
    input text  ${obj_FT_Debit}  ${accID}
    input text  ${obj_FT_Credit}  ${accIDCredit}
    input text  ${obj_FT_Amt}  ${FT_amt}
    input text  ${obj_FT_Desc}  ${FT_desc}
    click button  ${obj_FT_submit}
    click link  ${obj_FT_continue}
    log to console  Fund Transfer Completed