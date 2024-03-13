*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Add Customer

Fill Customer Form with Anonym Profile
    Add Email
    Add FirstName
    Add LastName
    Add City
    Add State
    Select A Male Gender
    Accept Receiving Promos

Submit Customer
    Click Button    Submit

Cancel Adding Customer
    Click Link    Cancel

Add Email
    Input Text    id:EmailAddress    grgr@gmail.com

Add FirstName
    Input Text    id:FirstName        GRGR

Add LastName
    Input Text    id:LastName        Robert

Add City
    Input Text    id:City        Bruxelles

Add State
    Select From List By Value    name:state    DC
    Page Should Contain    District of Columbia

Select A Female Gender
    Select Radio Button    gender    female

Select A Male Gender
    Select Radio Button    gender    male

Accept Receiving Promos
    Select Checkbox    name:promos-name

