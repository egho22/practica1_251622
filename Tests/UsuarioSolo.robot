*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_007_Login_Solo_Usuario
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    standard_user
    Click Button    id=login-button
    Page Should Contain    Password is required
    Close Browser