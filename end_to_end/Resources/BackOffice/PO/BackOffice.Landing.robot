*** Settings ***
Library  SeleniumLibrary
Resource    ../../../Data/url.robot


*** Variables ***
${LANDING_INTRO_TITLE}=       Dashboard
${LANDING_INTRO_SUBTITLE}=    RobotFrameworkTutorial.com Demo Admin Sit


*** Keywords ***

Navigate to
    Go To    ${BACKOFFICE_PAGE_URL}

Verify Page Loaded
    Wait Until Page Contains    ${LANDING_INTRO_TITLE}
    Wait Until Page Contains    ${LANDING_INTRO_SUBTITLE}