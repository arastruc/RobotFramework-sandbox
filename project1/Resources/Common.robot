*** Settings ***
Documentation    Common keywords for test suites
Library    SeleniumLibrary


*** Keywords ***

Open And Resize Browser
    # Set Selenium Speed    0.25
    Open Browser    about:blank    firefox
    Go To    https://automationplayground.com/crm/
    Set Window Size        1500    900
    Set Window Position    200    50


Wait And Close Browser
    Sleep    3s
    Close Browser