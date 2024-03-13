*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Signed Out
    Wait Until Page Contains    Thank you for using the CRM. See you next time!
    Location Should Contain    sign-out.html