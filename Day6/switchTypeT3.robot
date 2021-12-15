*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
contractTypeT3
    wait until page does not contain element    //*[@aria-label="Loading interface..."]      60
    click element   //*[@data-testid="dt_contract_dropdown"]

    wait until page contains element    //*[text()="All"]    20
    click element   //*[text()="All"]

    wait until page contains element    //*[text()="Higher/Lower"]    20
    click element   //*[text()="Higher/Lower"]