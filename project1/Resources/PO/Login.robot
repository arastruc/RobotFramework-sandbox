*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKBOX_REMEMBER_ME_ID}=     id:remember
${INPUT_EMAIL_ID}=              id:email-id
${INPUT_PASSWORD_ID}=           id:password
${INVALID_EMAIL}=               unvalid_email
${INVALID_PASSWORD}=            unvalid_password
${LOGIN_HEADER_PAGE_TITLE}=     Login
${LOGIN_URL}=                   login.html


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOGIN_HEADER_PAGE_TITLE}
    Location Should Contain     ${LOGIN_URL}

Sign In
    [Arguments]                   ${login_email}    ${login_password}
    Fill "Email" field            ${login_email}
    Fill "Password" field         ${login_password}
    Select "Remember me" checkbox
    Click "Submit" button

Sign In With Wrong Credentials
    Fill "Email" field       ${INVALID_EMAIL}
    Fill "Password" field    ${INVALID_PASSWORD}
    Click "Submit" button

Fill "Email" field
    [Arguments]    ${email}
    Input Text     ${INPUT_EMAIL_ID}    ${email}

Fill "Password" field
    [Arguments]    ${password}
    Input Text     ${INPUT_PASSWORD_ID}    ${password}

Select "Remember me" checkbox
    Select Checkbox    ${CHECKBOX_REMEMBER_ME_ID}

Click "Submit" button
    Click Button    Submit