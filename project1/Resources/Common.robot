*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open And Resize Browser
    Set Selenium Speed        0.2s
    Open Browser              about:blank    ${BROWSER}
    Set Window Size           1500    900
    Set Window Position       200    50


Wait And Close Browser
    Sleep                     1.5s
    Close Browser