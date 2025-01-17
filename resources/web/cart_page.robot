*** Settings ***
Documentation       All the page objects and keywords of cart page

Library             SeleniumLibrary


*** Variables ***
${CHECKOUT_BUTTON_LOCATOR}      id:checkout
${ITEM_NAME_LOCATOR}            css:[data-test="inventory-item-name"]
${ITEM_PRICE_LOCATOR}           css:[data-test="inventory-item-price"]


*** Keywords ***
proceeds to checkout
    Wait Until Page Contains Element    css=.cart_list
    ${itemName}=    Get Text    ${ITEM_NAME_LOCATOR}
    Should Be Equal    ${itemName}    ${ITEM_NAME}

    ${priceItem}=    Get Text    ${ITEM_PRICE_LOCATOR}
    Should Be Equal    ${priceItem}    ${PRICE_ITEM}
    Click Button    ${CHECKOUT_BUTTON_LOCATOR}
