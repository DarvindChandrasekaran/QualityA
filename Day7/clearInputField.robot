*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
clearInput
    [Arguments]    ${input_field}
    Wait Until Page Contains Element    ${input_field}    5
    ${current_value}=    Get Element Attribute    ${input_field}    value
    ${value_length}=    Get Length    ${current_value}
    # sometimes text cursor starts from the middle, so delete front and back characters
    Repeat Keyword    ${value_length}    Press Keys    ${input_field}   BACKSPACE
    Repeat Keyword    1   Press Keys    ${input_field}   DELETE