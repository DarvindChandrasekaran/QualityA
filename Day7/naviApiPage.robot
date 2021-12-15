*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
navigateUserToApiPage
    reload page
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    wait until page does not contain element    //*[@class="chart-container__loader"]   20
    click element   //*[@class="dc-icon"]

    wait until page contains element    dc_api-token_link    20
    click element   dc_api-token_link