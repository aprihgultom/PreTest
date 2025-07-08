*** Settings ***
Resource    ../Keywords/CommonFunction.robot
Resource    ../Resources/PageObject/Search.robot
Resource    ../Resources/PageObject/Category.robot


*** Test Cases ***
Shopping Cart Checkout
    [Documentation]    Buyer Add To Cart
    [Tags]    regression
    CommonFunction.Open Browser Url
