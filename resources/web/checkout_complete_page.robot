*** Settings ***
Documentation       All the page objects and keywords of checkout complete page

Library             SeleniumLibrary


*** Variables ***
${COMPLETE_HEADER_LOCATOR}      css=.complete-header


*** Keywords ***
the user sees the order confirmation message
    Wait Until Page Contains Element    ${COMPLETE_HEADER_LOCATOR}
    Capture Page Screenshot    confirmationOrder.png
    Element Text Should Be    ${COMPLETE_HEADER_LOCATOR}    Thank you for your order!
