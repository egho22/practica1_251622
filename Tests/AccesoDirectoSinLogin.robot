*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_009_Acceso_Directo_Sin_Login
    Open Browser    https://www.saucedemo.com/inventory.html    chrome
    Page Should Contain    You can only access '/inventory.html' when you are logged in.
    Close Browser