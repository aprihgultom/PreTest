*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keywords/CommonFunction.robot
Library     String
Library     RequestsLibrary
Library     JSONLibrary


*** Variables ***
# ElementObject


*** Keywords ***
Get Single User
    Create Session    getsession    https://reqres.in    verify=true
    ${response}=    GET On Session    getsession    /api/users/2
    Status Should Be    200    ${response}    # Check Status Success as 200

Post Create User
    Create Session    postsession    https://reqres.in    verify=true
    &{body}=    Create Dictionary    name=Andri    job=QAEngineer
    &{header}=    Create Dictionary    Cache-Control=no-cache
    ${response}=    POST On Session    postsession    /api/users    data=${body}    headers=${header}
    Status Should Be    201    ${response}    # Check Status Success as 201
