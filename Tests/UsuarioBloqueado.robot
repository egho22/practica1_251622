*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_002_Login_Usuario_Bloqueado
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    locked_out_user
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Page Should Contain    Epic sadface: Sorry, this user has been locked out.
    Close Browser