*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot


*** Keywords ***
contractStake
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    clearInput      dt_amount_input
    input text      dt_amount_input     10