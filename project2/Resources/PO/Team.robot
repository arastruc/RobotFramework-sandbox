*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAM_TITLE}=                      Our Amazing Team
${TEAM_PARTNER_COUNT}=              3
${TEAM_PARTNER_LOCATOR}=            class:team-member
${TEAM_FIRST_PARTNER_NAME}=         Kay Garland
${TEAM_SECOND_PARTNER_NAME}=        Larry Parker
${TEAM_THIRD_PARTNER_NAME}=         Diana Pertersen


 
*** Keywords ***
Verify 3 "Partners" are Displayed
    ${partner_count}=              Get Element Count            ${TEAM_PARTNER_LOCATOR}
    Should Be True                 ${partner_count} == ${TEAM_PARTNER_COUNT}
 
    Page Should Contain Element    ${TEAM_PARTNER_LOCATOR}                    ${TEAM_FIRST_PARTNER_NAME}
    Page Should Contain Element    ${TEAM_PARTNER_LOCATOR}                    ${TEAM_SECOND_PARTNER_NAME}
    Page Should Contain Element    ${TEAM_PARTNER_LOCATOR}                    ${TEAM_THIRD_PARTNER_NAME}


Verify Page Loaded
    Wait Until Page Contains  ${TEAM_TITLE}
