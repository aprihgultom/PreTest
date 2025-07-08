*** Settings ***
Resource    ../Keywords/CommonFunction.robot
Resource    ../Resources/PageObject/Regresin.robot


*** Test Cases ***
API Get Single User
    [Documentation]    Scenario 1 : Get Single User
    [Tags]    regression

API Post Create User
    [Documentation]    Scenario 2: Post Create User
    [Tags]    regression
