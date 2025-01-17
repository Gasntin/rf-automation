*** Settings ***
Documentation       All the page objects and keywords of checkout step two page

Library             SeleniumLibrary


*** Variables ***
${FINISH_BUTTON_LOCATOR}    id:finish


*** Keywords ***
completes order
    Click Button    ${FINISH_BUTTON_LOCATOR}
