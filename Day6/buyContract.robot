*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
buyRisingContract
    wait until page does not contain element    //*[@aria-label="Loading interface..."]      60
    wait until page contains element    //*[@class="btn-purchase btn-purchase--1"]     20
    click element   //*[@class="btn-purchase btn-purchase--1"]