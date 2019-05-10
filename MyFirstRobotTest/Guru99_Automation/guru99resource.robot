*** Settings ***
Documentation    Test the Guru99 Banking Website
Library         Selenium2Library
Resource        guru99Data.robot
Resource        guru99ObjRepo.robot
Variables       myconfig.yaml

*** Keywords ***
Open the Guru99 website and login with
#    Open My Browser
    [Arguments]    ${username}      ${password}
    Open Browser    http://demo.guru99.com/V4/      ${custombrowser}
    Maximize Browser Window
    Input Text    ${obj_username}    ${username}
    Input Text    ${obj_password}    ${password}
    Click Button    ${obj_loginButton}
Verify if the dashboard is displayed with
    [Arguments]    ${managerid}
    Page Should Contain Element    ${obj_managerid}
    log to console  User logged in successfully!
Initiate and Confirm the Fund Transfer to the account
    [Arguments]  ${accIDCredit}
    click link  ${obj_FTPage}
    input text  ${obj_FT_Debit}  ${accID}
    input text  ${obj_FT_Credit}  ${accIDCredit}
    input text  ${obj_FT_Amt}  ${FT_amt}
    input text  ${obj_FT_Desc}  ${FT_desc}
    click button  ${obj_FT_submit}
    sleep  2s
    click link  ${obj_FT_continue}
    sleep  2s
    log to console  Fund Transfer Completed
Deposit to the account
    click link  ${obj_DP_page}
    input text  ${obj_DP_acc}  ${accID}
    input text  ${obj_DP_amt}  ${FT_amt}
    input text  ${obj_DP_desc}  ${FT_desc}
    click button  ${obj_DP_submit}
    sleep  2s
    click link  ${obj_DP_continue}
    sleep  2s
    log to console  Deposit Process Completed
Logout the session and close the browser
    Click Link    ${obj_logout}
    close browser