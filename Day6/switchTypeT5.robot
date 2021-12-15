*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
contractTypeT5
    wait until page does not contain element    //*[@aria-label="Loading interface..."]      60
    click element   //*[@data-testid="dt_contract_dropdown"]

    wait until page contains element    //*[text()="All"]    20
    click element   //*[text()="All"]

    wait until page contains element    //*[@id="dt_contract_multiplier_item"]    20
    click element   //*[@id="dt_contract_multiplier_item"]