*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary


*** Keywords ***
createApiWithValueAnd1Check
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    wait until page does not contain element    //*[@class="initial-loader account__initial-loader"]   20

#    wait until page contains element    //*[text="Read"]   30
    click element       //*[text()="Read"]
    page should contain element     //*[@class="dc-checkbox__input" and @name="read" and @checked]

    click element       //*[@class="dc-input__field"]
    input text          //*[@class="dc-input__field"]         Bitcoin
    click element       //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large da-api-token__button"]

    capture page screenshot