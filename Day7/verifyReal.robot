*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary


*** Keywords ***
LandingOnReal
    wait until page does not contain element   //*[@aria-label="Loading interface..."]      60
    wait until page contains element    dt_core_account-info_acc-info   60
    click element   dt_core_account-info_acc-info
    wait until page contains element   //*[text()="Real" and contains(@class,"active")]     30