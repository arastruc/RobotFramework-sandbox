*** Settings ***
Library  SeleniumLibrary
Resource    ../../Data/urls.robot


*** Variables ***
${HOME_HEADER_LABEL}=    Customers Are Priority One!


*** Keywords ***

Navigate to
    Go To    ${HOME_URL}
    Verify Page Loaded

Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LABEL}