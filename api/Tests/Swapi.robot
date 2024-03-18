*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/SwapiApp.robot

Test Setup       Common.Create Default Session
Test Teardown    Common.Delete Session

*** Variables ***



*** Test Cases ***
User can retrieve "Planets"	
    [Tags]    1001    Smoke    Planets
    
    SwapiApp.Check Planets are available

"Kamino" exists
    [Tags]    1002    Smoke    Planets
    
    SwapiApp.Check Kamino exists
