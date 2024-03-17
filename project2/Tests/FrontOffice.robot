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

Should be able to access "Services" Page
    [Tags]    10030    Smoke    Services
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Services" Page

"Services" Page should match requirements
    [Tags]    10031    Functional    Services
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Services" Page
    FrontOfficeApp.Validate "Services" Page

Should be able to access "PortFolio" Page
    [Tags]    10030    Smoke    PortFolio
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "PortFolio" Page

"PortFolio" Page should match requirements
    [Tags]    10031    Functional    PortFolio
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "PortFolio" Page
    FrontOfficeApp.Validate "PortFolio" Page

Should be able to access "About" Page
    [Tags]    10040    Smoke    About
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "About" Page

"About" Page should match requirements
    [Tags]    10041    Functional    About
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "About" Page
    FrontOfficeApp.Validate "About" Page

Should be able to access "Team" Page
    [Tags]    10050    Smoke    Team
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" Page should match requirements
    [Tags]    10051    Functional    Team
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Validate "Team" Page

Should be able to access "Contact" Page
    [Tags]    1006    Functional    Contact
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Contact" Page