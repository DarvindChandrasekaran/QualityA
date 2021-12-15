*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    login.robot
Resource    verifyReal.robot
Resource    switchAccount.robot
Resource    switchMarket.robot
Resource    switchType.robot
Resource    switchStake.robot
Resource    switchDuration.robot
Resource    buyContract.robot
Resource    switchAUD-USD.robot
Resource    switchTypeT3.robot
Resource    switchDurationT3.robot
Resource    switchPayoutT3.robot
Resource    buyContractT3.robot
Resource    switchBarrierT4.robot
Resource    switchPayoutT4.robot
Resource    switchMarketT5.robot
Resource    switchTypeT5.robot
Resource    T5stake.robot




*** Test Cases ***
Test

#Task1
    Login
    LandingOnReal
    switchToDemo

#Task2
    switchMarketVolatility
    contractType
    contractDuration
    contractStake
    buyRisingContract

#Task3
    switchMarketForex
    contractTypeT3
    contractDurationT3
#    contractBarrierT3 - (DEFAULT)
    contractPayoutT3
    buyLowerContract

#Task4
    switchMarketForex
    contractTypeT3
    contractDurationT3
    contractBarrierT4
    contractPayoutT4
#    buyLowerContract - Button Disabled

#Task5
    switchMarketVolatilityT5
    contractTypeT5
    stakeCheckT5
#    allowDealCacelationOrProfitLoss
#    multiplierValueSelection




#    close browser

