*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SERVICES_TITLE}=                     Services
${SERVICES_LOCATOR}=                   xpath://h4[@class='service-heading']
${SERVICES_COUNT}=                     3
${SERVICE_ECOMMERCE_LABEL}=            E-Commerce
${SERVICE_RESPONSIVE_DESIGN_LABEL}=    Responsive Design
${SERVICE_WEB_SECURITY_LABEL}=         Web Security

 
*** Keywords ***

Verify "Three Services" Displayed

    ${services_count}=             SeleniumLibrary.Get Element Count          ${SERVICES_LOCATOR}
    Should Be True                 ${services_count} == ${SERVICES_COUNT}
    Page Should Contain Element    ${SERVICES_LOCATOR}                        ${SERVICE_ECOMMERCE_LABEL}
    Page Should Contain Element    ${SERVICES_LOCATOR}                        ${SERVICE_RESPONSIVE_DESIGN_LABEL}
    Page Should Contain Element    ${SERVICES_LOCATOR}                        ${SERVICE_WEB_SECURITY_LABEL}


Verify Page Loaded
    Wait Until Page Contains  ${SERVICES_TITLE}