*** Settings ***
Resource    ../../Resources/Common/Common.robot
Resource    ../../Resources/BackOffice/BackOfficeApp.robot

Test Teardown       Sleep    1
Suite Setup      Common.Open Manually And Resize Browser
Suite Teardown   Common.Wait And Close Browser


*** Test Cases ***

Landing page should be displayed	
    [Tags]    1001    Smoke    Landing
    BackOfficeApp.Go to Landing Page