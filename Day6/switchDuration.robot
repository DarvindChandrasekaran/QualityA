*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
contractDuration
    click element       dt_duration_range_input
    clear element text      dt_duration_range_input
    click element       //*[@data-value="5"]
