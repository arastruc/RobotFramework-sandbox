*** Settings ***
Resource    PO/Planets.robot

*** Keywords ***

Check Planets are available
    Planets.Get All Planets

Check Kamino exists
    Planets.Get Known Planet By Id   10    Kamino
    