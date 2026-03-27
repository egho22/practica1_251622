*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_004_Login_Usuario_Inexistente
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    no_existo_123
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Page Should Contain    Username and password do not match
    Close Browser