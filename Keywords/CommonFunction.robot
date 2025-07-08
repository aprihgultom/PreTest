*** Settings ***
Library     SeleniumLibrary
Library     JSONLibrary
Library     OperatingSystem
Library     Collections


*** Variables ***
# Value
${strUrl}       https://www.saucedemo.com/


*** Keywords ***
Open Browser Url
    Open Browser    ${strUrl}
    Maximize Browser Window
