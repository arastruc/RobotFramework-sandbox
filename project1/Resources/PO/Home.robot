*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${HOME_HEADER_LABEL}=    Customers Are Priority One!
${HOME_URL}=             https://automationplayground.com/crm/


*** Keywords ***

Navigate to
    Go To    ${HOME_URL}
    Verify Page Loaded

Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LABEL}