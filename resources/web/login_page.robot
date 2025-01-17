*** Settings ***
Documentation       All the page objects and keywords of landing page

Library             SeleniumLibrary


*** Variables ***
${url}                      https://www.saucedemo.com
${USERNAME_LOCATOR}         id:user-name
${PASSWORD_LOCATOR}         id:password
${LOGIN_BUTTON_LOCATOR}     id:login-button


*** Keywords ***
the user navigates to the login page
    Open Browser    ${url}    chrome
    Capture Page Screenshot    loginPage.png

the user fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_LOCATOR}    ${username}
    Input Password    ${PASSWORD_LOCATOR}    ${password}
    Capture Page Screenshot    fillPage.png
    Click Button    ${LOGIN_BUTTON_LOCATOR}
