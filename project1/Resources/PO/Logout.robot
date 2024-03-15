*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGOUT_PAGE_TITLE}=    Signed Out
${LOGOUT_PAGE_LABEL}=    Thank you for using the CRM. See you next time!
${LOGOUT_URL}=    sign-out.html

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOGOUT_PAGE_TITLE}
    Wait Until Page Contains    ${LOGOUT_PAGE_LABEL}
    Location Should Contain    ${LOGOUT_URL}