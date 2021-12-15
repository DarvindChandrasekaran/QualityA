*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot

*** Keywords ***
contractDurationT3
    click element       //*[@name="duration"]
    clearInput      //*[@name="duration"]
    input text       //*[@class="dc-input__field"]   2