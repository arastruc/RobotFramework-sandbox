*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TOP_BAR_TITLE}=                    RobotFrameworkTutorial.com Test Client
${TOP_BAR_LINK_ABOUT_LABEL}=         About
${TOP_BAR_LINK_CONTACT_LABEL}=       Contact
${TOP_BAR_LINK_PORTFOLIO_LABEL}=     Portfolio
${TOP_BAR_LINK_SERVICES_LABEL}=      Services
${TOP_BAR_LINK_TEAM_LABEL}=          Team


*** Keywords ***

Navigate to Services
    Click Link    Sign In

Verify Page Loaded
    Wait Until Page Contains    ${TOP_BAR_TITLE}
    Verify "About" Link Is Displayed
    Verify "Contact" Link Is Displayed
    Verify "Landing Page" Link Is Displayed
    Verify "Portfolio" Link Is Displayed
    Verify "Services" Link Is Displayed
    Verify "Team" Link Is Displayed

###

Navigate to "Landing Page"
    Click Link    ${TOP_BAR_TITLE}

Navigate to "Services"
    Click Link    ${TOP_BAR_LINK_SERVICES_LABEL}

Navigate to "Portfolio"
    Click Link    ${TOP_BAR_LINK_PORTFOLIO_LABEL}

Navigate to "About"
    Click Link    ${TOP_BAR_LINK_ABOUT_LABEL}

Navigate to "Team"
    Click Link    ${TOP_BAR_LINK_TEAM_LABEL}

Navigate to "Contact"
    Click Link    ${TOP_BAR_LINK_CONTACT_LABEL}

Verify "Landing Page" Link Is Displayed
    Page Should Contain Link    ${TOP_BAR_TITLE}

Verify "Services" Link Is Displayed
    Page Should Contain Link    ${TOP_BAR_LINK_SERVICES_LABEL}

Verify "Portfolio" Link Is Displayed
    Page Should Contain Link    ${TOP_BAR_LINK_PORTFOLIO_LABEL}

Verify "About" Link Is Displayed
    Page Should Contain Link    ${TOP_BAR_LINK_ABOUT_LABEL}

Verify "Team" Link Is Displayed
    Page Should Contain Link    ${TOP_BAR_LINK_TEAM_LABEL}

Verify "Contact" Link Is Displayed
    Page Should Contain Link    ${TOP_BAR_LINK_CONTACT_LABEL}