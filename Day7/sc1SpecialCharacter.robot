*** Settings ***
Documentation    Suite description

*** Keywords ***
createApiWithSpecialCharacters
    sleep   3
    click element       //*[@class="dc-input__field"]
    input text          //*[@class="dc-input__field"]         ^^&*&%%&*(*

    capture page screenshot