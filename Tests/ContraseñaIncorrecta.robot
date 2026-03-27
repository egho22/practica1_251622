*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_003_Login_Password_Incorrecto
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    standard_user
    Input Password  id=password     clave_erronea
    Click Button    id=login-button
    Page Should Contain    Username and password do not match
    Close Browser