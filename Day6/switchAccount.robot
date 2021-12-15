*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
switchToDemo
    click element   dt_core_account-switcher_demo-tab
    click element   dt_VRTC5169176
    wait until page does not contain element    //*[@aria-label="Loading interface..."]     60
    click element   dt_core_account-info_acc-info
    wait until page contains element    //*[text()="Demo" and contains(@class,"active")]     30
