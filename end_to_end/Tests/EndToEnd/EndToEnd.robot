*** Settings ***
Resource    ../../Resources/BackOffice/BackOfficeApp.robot
Resource    ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource    ../../Resources/Common/Common.robot
Test Teardown       Sleep    1
Suite Setup      Common.Open Manually And Resize Browser
Suite Teardown   Common.Wait And Close Browser


*** Test Cases ***

Should be able to access both site
    [Tags]    1001    Smoke    Landing
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page

