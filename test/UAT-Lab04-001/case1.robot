*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser To Registration Page
Suite Teardown    Close Browser

*** Variables ***
${BROWSER}    Chrome
${URL}        http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
Open Workshop Registration Page
    Title Should Be    Workshop Registration

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
