*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
switchMarketForex
    reload page
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    wait until page does not contain element    //*[@class="chart-container__loader"]   20

    wait until page contains element    //*[@class="ic-icon cq-symbol-dropdown"]   20
    click element   //*[@class="ic-icon cq-symbol-dropdown"]

    wait until page contains element    //*[text()="Forex"]    20
    click element   //*[text()="Forex"]

    wait until page contains element    //*[@class="ic-frx ic-frxAUDUSD"]
    click element   //*[@class="ic-frx ic-frxAUDUSD"]

#    wait until page contains element    //*[text()="AUD/USD]    20
#    click element   //*[text()="AUD/USD"]