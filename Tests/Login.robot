*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_001_Login_con_Credenciales_Validas
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    standard_user
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Element Text Should Be    class:title    Products
    Close Browser