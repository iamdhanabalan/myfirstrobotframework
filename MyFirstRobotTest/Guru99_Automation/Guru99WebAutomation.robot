*** Settings ***
Documentation    Test the Guru99 Banking Website
Test Setup         Open the Guru99 website and login with      ${username}     ${password}
Test Teardown       Logout the session and close the browser
Resource        Resources/guru99resource.robot

*** Test Cases ***

Test Case: 001 - The user should be able to login and view the dashboard
    [Tags]  Smoke
    Verify if the dashboard is displayed with  ${managerid}

Test Case: 002 - The user should be to initiate and complete a fund transfer
    [Tags]  FT  Full
    Initiate and Confirm the Fund Transfer to the account  ${accIDCredit}

Test Case: 003 - The user should be to deposit into an account
    [Tags]  DP  Full
    Deposit to the account