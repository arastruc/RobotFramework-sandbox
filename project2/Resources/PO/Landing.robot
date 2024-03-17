*** Settings ***
Library  SeleniumLibrary
Library    XML


*** Variables ***
${LANDING_INTRO_TITLE}=    It's Nice To Meet You
${LANDING_INTRO_SUBTITLE}=    Welcome To Our Studio!
###
${LANDING_LINK_TITLE}=    Tell Me More
###
${LANDING_PAGE_URL}=    https://automationplayground.com/front-office/



*** Keywords ***

Navigate to
    Go To    ${LANDING_PAGE_URL}

Verify Page Loaded
    Wait Until Page Contains    ${LANDING_INTRO_TITLE}
    Wait Until Page Contains    ${LANDING_INTRO_SUBTITLE}
    Verify "Tell Me More' Link Is Displayed

Verify "Tell Me More' Link Is Displayed
    Page Should Contain Link    ${LANDING_LINK_TITLE}