*** Settings ***
Documentation       All the page objects and keywords of checkout step one page

Library             SeleniumLibrary


*** Variables ***
${FIRST_NAME_LOCATOR}           id:first-name
${LAST_NAME_LOCATOR}            id:last-name
${POSTAL_CODE_LOCATOR}          id:postal-code
${CONTINUE_BUTTON_LOCATOR}      id:continue


*** Keywords ***
fills out the checkout information
    [Arguments]    ${firstName}    ${lastName}    ${postalCode}
    Input Text    ${FIRST_NAME_LOCATOR}    ${firstName}
    Input Text    ${LAST_NAME_LOCATOR}    ${lastName}
    Input Text    ${POSTAL_CODE_LOCATOR}    ${postalCode}
    Capture Page Screenshot    fillCheckoutInformation.png
    Click Button    ${CONTINUE_BUTTON_LOCATOR}
