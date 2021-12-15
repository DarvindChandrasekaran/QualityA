*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    clearInputField.robot

*** Keywords ***
createApiwithValueAndNoCheck
    sleep   3
    clearInput      //*[@class="dc-input__field"]
    input text      //*[@class="dc-input__field"]         Ethareum

    capture page screenshot