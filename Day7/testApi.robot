*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    login.robot
Resource    verifyReal.robot
Resource    switchAccount.robot
Resource    naviApiPage.robot
Resource    sc1OneApi.robot
Resource    sc1TwoApi.robot
Resource    sc1AllApi.robot
Resource    sc1SpecialCharacter.robot
Resource    sc1NoneApi.robot
Resource    sc1OneChar.robot
Resource    sc1OneCharNoCb.robot
Resource    delete.robot

*** Test Cases ***
TestApi
    Login
    LandingOnReal
    switchToDemo
    navigateUserToApiPage

#Test Scenario 1
    createApiWithValueAnd1Check
    createApiWithValueAnd2Check
    createApiWithValueAndAllCheck
    createApiWithSpecialCharacters
    createApiwithValueAndNoCheck
    createApiWith1ValueAndAllCheck
    createApiWith1ValueAndNoCheck

#Test Scenario 2
#    deleteToken