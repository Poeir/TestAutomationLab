*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration

Fill Registration Form
    [Arguments]    ${fname}    ${lname}    ${org}    ${email}    ${phone}
    Input Text    id=firstname    ${fname}
    Input Text    id=lastname     ${lname}
    Input Text    id=organization    ${org}
    Input Text    id=email    ${email}
    Input Text    id=phone    ${phone}

Submit Registration
    Click Button    Register

Registration Should Be Successful
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

Error Message Should Be
    [Arguments]    ${message}
    Page Should Contain    ${message}