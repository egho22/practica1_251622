*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_006_Login_Solo_Password
    Open Browser    https://www.saucedemo.com/    chrome
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Page Should Contain    Username is required
    Close Browser