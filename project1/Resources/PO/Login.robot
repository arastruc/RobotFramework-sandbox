*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Login
    Location Should Contain    login.html

Sign In
    Input Text    id:email-id    toto@gmail.com
    Input Password    id:password    toto
    Select Checkbox    id:remember
    Click Button    Submit


Sign In With Wrong Credentials
    Input Text    id:email-id    toto
    Input Password    id:password    toto
    # Click Element    id:submit-id
    Click Button    Submit

Should Display login and password
    Page Should Contain    toto
    Page Should Contain    toto@gmail.com