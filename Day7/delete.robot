*** Settings ***
Documentation    Suite description

*** Keywords ***
deleteToken
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    wait until page does not contain element    //*[@class="initial-loader account__initial-loader"]   20

    click element //*[@class="dc-btn dc-btn--secondary dc-btn__small"]