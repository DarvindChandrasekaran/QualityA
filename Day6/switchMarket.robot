*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
switchMarketVolatility
    reload page
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    wait until page does not contain element    //*[@class="chart-container__loader"]   20

    wait until page contains element    //*[@class="ic-icon cq-symbol-dropdown"]   20
    click element   //*[@class="ic-icon cq-symbol-dropdown"]

    wait until page contains element    //*[text()="Synthetic Indices"]    20
    click element   //*[text()="Synthetic Indices"]

    wait until page contains element    //*[text()="Volatility 10 (1s) Index"]    20
    click element   //*[text()="Volatility 10 (1s) Index"]
