*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot

*** Keywords ***
contractPayoutT4
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    click element   dc_payout_toggle_item
    click element   dt_amount_input
    clearInput      dt_amount_input
    input text      dt_amount_input    10.00