*** Settings ***
Documentation       User logs in, adds an item to the cart, checks out, and completes the order.

Library             SeleniumLibrary
Resource            ../resources/web/login_page.robot
Resource            ../resources/web/inventory_page.robot
Resource            ../resources/web/cart_page.robot
Resource            ../resources/web/checkout_step_one_page.robot
Resource            ../resources/web/checkout_step_two_page.robot
Resource            ../resources/web/checkout_complete_page.robot

Test Teardown       Close Browser


*** Variables ***
${USERNAME}         standard_user
${PASSWORD}         secret_sauce
${FIRST_NAME}       Ega
${LAST_NAME}        Septian
${POSTAL_CODE}      17125


*** Test Cases ***
User Journey - Shopping Cart Checkout
    Given the user navigates to the login page
    When the user fill the login form    ${USERNAME}    ${PASSWORD}
    Then the user adds an item "Sauce Labs Onesie" to the shopping cart
    And proceeds to checkout
    And fills out the checkout information    ${FIRST_NAME}    ${LAST_NAME}    ${POSTAL_CODE}
    And completes order
    Then the user sees the order confirmation message
