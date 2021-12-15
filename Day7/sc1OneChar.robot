*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot

*** Keywords ***
createApiWith1ValueAndAllCheck
    sleep   3
    clearInput      //*[@class="dc-input__field"]
    set selenium speed  0.5

    click element       //*[text()="Read"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="read" and @checked]

    click element       //*[text()="Trade"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="trade" and @checked]

    click element       //*[text()="Payments"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="payments" and @checked]

    click element       //*[text()="Admin"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="admin" and @checked]

    click element       //*[text()="Trading information"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="trading_information" and @checked]


    input text      //*[@class="dc-input__field"]         A

    capture page screenshot