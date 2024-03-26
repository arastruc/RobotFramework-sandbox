*** Settings ***
Resource    PO/Planets.robot

*** Keywords ***

Check Planets are available
    Planets.Get All Planets
    Planets.Get All Planets Url


Check Expected Planets are displayed
    [Arguments]    ${PLANETS_DATA}
    Planets.Check Planet By Data    ${PLANETS_DATA}


Check Kamino exists
    Planets.Get Planet By Id   10    Kamino
    