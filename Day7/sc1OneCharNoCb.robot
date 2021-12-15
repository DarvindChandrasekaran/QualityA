*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot

*** Keywords ***
createApiWith1ValueAndNoCheck
    sleep   3

    click element       //*[text()="Read"]
    page should not contain element     //*[@class="dc-checkbox__input" and @name="read" and @checked]

    click element       //*[text()="Trade"]
    page should not contain element     //*[@class="dc-checkbox__input" and @name="trade" and @checked]

    click element       //*[text()="Payments"]
    page should not contain element     //*[@class="dc-checkbox__input" and @name="payments" and @checked]

    click element       //*[text()="Admin"]
    page should not contain element     //*[@class="dc-checkbox__input" and @name="admin" and @checked]

    click element       //*[text()="Trading information"]
    page should not contain element     //*[@class="dc-checkbox__input" and @name="trading_information" and @checked]

    clearInput      //*[@class="dc-input__field"]
    input text      //*[@class="dc-input__field"]         A

    capture page screenshot