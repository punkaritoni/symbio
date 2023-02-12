*** Settings ***
Documentation    Verify login functionality
Library    SeleniumLibrary

*** Test Cases ***
Sign In With Correct Credentials
    [tags]    signin
    Sign In Test Setup
    Open Browser    ${TARGET_URL}    ${BROWSER}
    Input Username And Password
    Wait Until Page Contains    Logged In Successfully    20

Sign In With Incorrect Credentials
    [tags]    signin
    Sign In Test Setup
    Open Browser    ${TARGET_URL}    ${BROWSER}
    Set Test Variable    ${PASSWORD}    wrong!
    Input Username And Password
    Wait Until Page Contains    Your password is invalid!    20


*** Keywords ***
Sign In Test Setup
    Set Test Variable    ${TARGET_URL}    https://practicetestautomation.com/practice-test-login/
    Set Test Variable    ${BROWSER}    Firefox
    Set Test Variable    ${USERNAME}    student
    Set Test Variable    ${PASSWORD}    Password123
    Set Test Variable    ${USERNAME_ELEMENT}    //*[@id="username"]
    Set Test Variable    ${PASSWORD_ELEMENT}    //*[@id="password"]
    Set Test Variable    ${LOGIN_BUTTON}    //*[@id="submit"]
Input Username And Password
    Input Text    ${USERNAME_ELEMENT}    ${USERNAME}
    Input Text    ${PASSWORD_ELEMENT}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}

