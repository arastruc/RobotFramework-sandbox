*** Settings ***
Library    SeleniumLibrary
Library    Dialogs

*** Keywords ***

Open And Resize Browser
    # Set Selenium Speed    0.2s
    Open Browser    about:blank    ${BROWSER}
    Resize Browser
    
Open Manually And Resize Browser
    # Set Selenium Speed    0.2s
    Choose Manually Browser
    Resize Browser

Resize Browser
    Set Window Size        1500    900
    Set Window Position    200    50
    # Maximize Browser Window

Choose Manually Browser
    ${new_browser}=    Get Selection From User    Which browser ?    edge    firefox
    Open Browser    about:blank    ${new_browser}

Wait And Close Browser
    Sleep    0.5s
    Close Browser