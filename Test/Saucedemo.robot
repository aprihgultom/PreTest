*** Settings ***
Resource    ../Keywords/CommonFunction.robot
Resource    ../Resources/PageObject/Saucedemo.robot


*** Test Cases ***
Shopping Cart Checkout
    [Documentation]    Buyer Shopping Cart Checkout
    [Tags]    regression
    CommonFunction.Open Browser Url
    Login User
    Buyer Add To Cart
    Verify Item Buyer Add To Cart
    CheckOut and Verify
