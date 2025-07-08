*** Settings ***
Library     SeleniumLibrary
Resource    ../../Keywords/CommonFunction.robot


*** Variables ***
# ElementObject
${username}                 standard_user
${password}                 secret_sauce

${productName}              Sauce Labs Backpack
${productItem}              1

${strFirstName}             Andrie
${strLastName}              Hariyanto
${strPostalCode}            17125
${strCheckoutComplete}      Thank you for your order!

${txtUsername}              //*[@id="user-name"]
${txtPassword}              //*[@id="password"]
${btnLogin}                 //*[@id="login-button"]

${btnDetailAddToCart}       //*[@id="add-to-cart"]
${iconItemCart}             //*[@id="shopping_cart_container"]/a
${btnCheckout}              //*[@id="checkout"]

${txtFirstName}             //*[@id="first-name"]
${txtLastName}              //*[@id="last-name"]
${txtPostalCode}            //*[@id="postal-code"]
${btnContinue}              //*[@id="continue"]
${btnFinish}                //*[@id="finish"]
${lblCheckoutComplete}      //*[@id="checkout_complete_container"]/h2


*** Keywords ***
Login User
    Input Text    ${txtUsername}    ${username}
    Input Text    ${txtPassword}    ${password}
    Click Button    ${btnLogin}

Buyer Add To Cart
    Wait Until Element Is Visible    //*[@id="item_4_title_link"]/div[contains(text(),'${productName}')]    60
    Click Element    //*[@id="item_4_title_link"]/div[contains(text(),'${productName}')]

    Wait Until Element Is Visible    ${btnDetailAddToCart}    60
    Click Element    ${btnDetailAddToCart}

Verify Item Buyer Add To Cart
    Wait Until Element Is Visible    //*[@id="shopping_cart_container"]/a/span[contains(text(),'${productItem}')]    60

    Element Should Be Visible    //*[@id="shopping_cart_container"]/a/span[contains(text(),'${productItem}')]
    Element Text Should Be
    ...    //*[@id="shopping_cart_container"]/a/span[contains(text(),'${productItem}')]
    ...    ${productItem}

    Click Element    ${iconItemCart}

CheckOut and Verify
    Wait Until Element Is Visible    ${btnCheckout}    60
    Element Should Be Visible    ${btnCheckout}

    Element Text Should Be    //*[@id="item_4_title_link"]/div[contains(text(),'${productName}')]    ${productName}

    Click Element    ${btnCheckout}

    Input Text    ${txtFirstName}    ${strFirstName}
    Input Text    ${txtLastName}    ${strLastName}
    Input Text    ${txtPostalCode}    ${strPostalCode}

    Click Element    ${btnContinue}

    Element Text Should Be    //*[@id="item_4_title_link"]/div[contains(text(),'${productName}')]    ${productName}

    Click Element    ${btnFinish}

    Wait Until Element Is Visible    ${lblCheckoutComplete}    60
    Element Should Be Visible    ${lblCheckoutComplete}
    Element Text Should Be    ${lblCheckoutComplete}    ${strCheckoutComplete}
