*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_010_Login_Performance_Glitch
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    performance_glitch_user
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Wait Until Element Is Visible    class:title    timeout=10s
    Element Text Should Be           class:title    Products
    Close Browser