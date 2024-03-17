*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/FrontOfficeApp.robot

Test Setup    Common.Open And Resize Browser
Test Teardown    Common.Wait And Close Browser

*** Variables ***
${BROWSER}=        firefox

*** Test Cases ***

Landing page should be displayed	
    [Tags]    1001    Smoke    Landing
    FrontOfficeApp.Go to Landing Page

"Services" Section should display Three Offers
    [Tags]    1002    Functional    Services
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Three items are displayed in "Services" Section

"PortFolio" Section should display Six Offers
    [Tags]    1003    Functional    Portfolio
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Six items are displayed in "PortFolio" Section


"About" Section should display "4 News" and "Inviting Bubble"
    [Tags]    1004    Functional    About
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Four news are displayed in "About" Section With An Invited Image

"Team" Section should display "3 Partners"
    [Tags]    1005    Functional    Team
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Three partners are displayed in "Team" Section

"Contact" Section should display a contact formula
    [Tags]    1006    Functional    Contact
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.A contact form is displayed in "Contact" Section