*** Settings ***
Documentation       All the page objects and keywords of product page

Library             SeleniumLibrary
Library             ../../custom_libraries/inventory_page_keyword.py


*** Variables ***
${INVENTORY_LIST_LOCATOR}       css:.inventory_list
${CART_LINK_LOCATOR}            css:.shopping_cart_link


*** Keywords ***
the user adds an item "${item_name}" to the shopping cart
    Set Suite Variable    ${ITEM_NAME}    ${item_name}
    Wait Until Page Contains Element    ${INVENTORY_LIST_LOCATOR}
    ${price}    Get Text Price For Item    ${item_name}
    Set Suite Variable    ${PRICE_ITEM}    ${price}
    Click Add To Cart For Item    ${item_name}
    Capture Page Screenshot    addToCart.png
    Click Element    ${CART_LINK_LOCATOR}
