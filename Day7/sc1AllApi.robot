*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
createApiWithValueAndAllCheck
    sleep   3
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


    click element       //*[@class="dc-input__field"]
    input text          //*[@class="dc-input__field"]         ShibaInu2021
    click element       //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]

    capture page screenshot