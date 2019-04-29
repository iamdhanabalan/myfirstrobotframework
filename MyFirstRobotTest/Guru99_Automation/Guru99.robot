*** Settings ***
Documentation    Test the Guru99 Banking Website
Resource        guru99resource.robot

*** Test Cases ***

Test Case: 001 - The user should be able to login and view the dashboard
    Open the Guru99 website
    login with      ${username}     ${password}
    Verify if the dashboard is displayed with  ${managerid}
    Logout the session
    Close Browser

Test Case: 002 - The user should be able to login and complete a fund transfer
    Open the Guru99 website
    login with      ${username}     ${password}
    Initiate and Confirm the Fund Transfer to the account  ${accIDCredit}
    Logout the session
    Close Browser