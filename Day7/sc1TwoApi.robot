*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
createApiWithValueAnd2Check
    sleep   3
    click element       //*[text()="Payments"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="payments" and @checked]

    click element       //*[text()="Admin"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="admin" and @checked]

    click element       //*[@class="dc-input__field"]
    input text          //*[@class="dc-input__field"]         Metaverse
    click element       //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]

    capture page screenshot