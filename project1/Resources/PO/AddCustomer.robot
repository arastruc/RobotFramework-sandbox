*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKBOX_RECEIVING_PROMOS_NAME}=     name:promos-name
${INPUT_CUSTOMER_EMAIL_ID}=     id:EmailAddress
${INPUT_FIRST_NAME_ID}=     id:FirstName
${INPUT_LAST_NAME_ID}=     id:LastName
${INPUT_CITY_ID}=     id:City
${SELECT_STATE_NAME}=     name:state

*** Keywords ***

Click on "Receiving Promos"
    Select Checkbox    ${CHECKBOX_RECEIVING_PROMOS_NAME}

Click on "Cancel" Button
    Click Link    Cancel

Fill "Customer Form" with Anonym Profile
    Fill Email    grgr@gmail.com
    Fill FirstName    GRGR
    Fill LastName    Robert
    Fill City    Bruxelles
    Fill State    DC    District of Columbia
    Select A Male Gender
    Click on "Receiving Promos"


Fill "Customer Form" with Known Profile
    [Arguments]    ${custom_profile}
    Fill Email    ${custom_profile}[email]
    Fill FirstName    ${custom_profile}[first_name]
    Fill LastName    ${custom_profile}[last_name]
    Fill City    ${custom_profile}[city]
    Fill State    ${custom_profile}[state_value]    ${custom_profile}[state_label]
    Select A Male Gender
    Click on "Receiving Promos"

Fill Email
    [Arguments]    ${email}
    Input Text    ${INPUT_CUSTOMER_EMAIL_ID}     ${email}

Fill FirstName
    [Arguments]    ${first_name}
    Input Text    ${INPUT_FIRST_NAME_ID}        ${first_name}

Fill LastName
    [Arguments]    ${last_name}
    Input Text    ${INPUT_LAST_NAME_ID}        ${last_name}

Fill City
    [Arguments]    ${city}
    Input Text    ${INPUT_CITY_ID}        ${city}

Fill State
    [Arguments]    ${district_value}    ${district_label}
    Select From List By Value    ${SELECT_STATE_NAME}    ${district_value}
    Page Should Contain    ${district_label}

Select A Female Gender
    Select Radio Button    gender    female

Select A Male Gender
    Select Radio Button    gender    male

Submit Customer
    Click Button    Submit

Verify Page Loaded
    Wait Until Page Contains  Fill Customer