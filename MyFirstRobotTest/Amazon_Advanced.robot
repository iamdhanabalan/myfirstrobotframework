*** Settings ***
Documentation    Sample test using selenium libraries
Library         Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${BROWSER}        Chrome
${URL}      https://amazon.com
${search_kw}    iphone
${click_search}    xpath=//*[@id="nav-search"]/form/div[2]/div/input
${inputbox_search}    id=twotabsearchtextbox
${page_header}    Your Amazon.com
${Random_result}    xpath("//*[contains(text(),'iphone')]")
 
*** Test Cases ***
I should be able to view iPhone products via search
    Open Amazon Website
    Search for    ${search_kw}
    The results should contain    ${search_kw}

I should be able to add iphone to the cart
    Open Amazon Website
    Search for    ${search_kw}
    The results should contain    ${search_kw}
    Click on the first result    
    
*** Keywords ***
Open Amazon Website
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains    ${page_header}
Search for
    [Arguments]      ${search_kw}
    Input Text    ${inputbox_search}        ${search_kw}
    Click Button    ${click_search}    
The results should contain
    [Arguments]      ${search_kw}
    Wait Until Page Contains    ${search_kw}    
Click on the first result
    Click link    ${Random_result}