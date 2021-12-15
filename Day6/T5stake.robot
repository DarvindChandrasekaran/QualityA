*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
stakeCheckT5
    element should contain  //*[@class="trade-container__fieldset-header trade-container__fieldset-header--inline"]     Stake
    element should not contain  //*[@class="trade-container__fieldset-header trade-container__fieldset-header--inline"]     Payout