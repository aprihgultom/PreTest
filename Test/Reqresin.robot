*** Settings ***
Resource    ../Keywords/CommonFunction.robot
Resource    ../Resources/PageObject/Reqresin.robot


*** Test Cases ***
API Get Single User
    [Documentation]    Scenario 1 : Get Single User
    [Tags]    regression
    Get Single User

API Post Create User
    [Documentation]    Scenario 2: Post Create User
    [Tags]    regression
    Post Create User
