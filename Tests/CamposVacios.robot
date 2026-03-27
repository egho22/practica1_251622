*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_005_Login_Campos_Vacios
    Open Browser    https://www.saucedemo.com/    chrome
    Click Button    id=login-button
    Page Should Contain    Username is required
    Close Browser