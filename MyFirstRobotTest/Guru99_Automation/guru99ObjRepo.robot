*** Settings ***
Documentation    Test the Guru99 Banking Website
Library         Selenium2Library
Resource        guru99Data.robot

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
${obj_FT_continue}  xpath=/html[1]/body[1]/table[1]/tbody[1]/tr[2]/td[1]/table[1]/tbody[1]/tr[5]/td[1]/p[1]/a[1]