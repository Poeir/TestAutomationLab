*** Settings ***
Documentation     Test Scenario: UAT-Lab04-001 Workshop Registration
Library           SeleniumLibrary
Resource          ../resource_keywords.robot

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html
${BROWSER}    Chrome

*** Test Cases ***
UAT-Lab04-001-TC01 Register Success With Organization
    [Documentation]    Register success with complete information
    Open Registration Page
    Fill Registration Form    Somyod    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Submit Registration
    Registration Should Be Successful
    Close Browser

UAT-Lab04-001-TC02 Register Success Without Organization
    [Documentation]    Register success without organization info
    Open Registration Page
    Fill Registration Form    Somyod    Sodsai    ${EMPTY}    somyod@kkumail.com    091-001-1234
    Submit Registration
    Registration Should Be Successful
    Close Browser
