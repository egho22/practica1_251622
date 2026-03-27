*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_008_Logout_Exitoso
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    standard_user
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Click Button    id=react-burger-menu-btn
    Sleep           1s
    Click Element   id=logout_sidebar_link
    Element Should Be Visible    id=login-button
    Close Browser