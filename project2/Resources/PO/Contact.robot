*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CONTACT_TITLE}=                   Contact Us
${CONTACT_FORM_LOCATOR}=            id:contactForm

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  ${CONTACT_TITLE}
    Page Should Contain Element    ${CONTACT_FORM_LOCATOR}