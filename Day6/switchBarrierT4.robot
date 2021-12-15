*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot

*** Keywords ***
contractBarrierT4
    wait until page does not contain element   //*[@aria-label="Loading interface..."]  20
    click element   dc_payout_toggle_item
    click element   dt_barrier_1_input
    clearInput      dt_barrier_1_input
    input text      dt_barrier_1_input     +0.01