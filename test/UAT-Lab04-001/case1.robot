*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
Open Workshop Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath=//h1
    Element Text Should Be    xpath=//h1    Workshop Registration
