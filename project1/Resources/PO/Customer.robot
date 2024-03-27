*** Settings ***
Library    SeleniumLibrary
Library    ../../Libraries/comparison.py

*** Variables ***

${ADD_CUSTOMER_SUCESS_TITLE}=    Success
${ADD_CUSTOMER_SUCESS_LABEL}=    Success! New customer added.
${CUSTOMER_URL}=                 customers.html
${CUSTOMER_TITLE}=               Our Happy Customers
${CUSTOMER_ROW_LOCATOR}=         //table[@id='customers']//tr

*** Keywords ***

Click On "Add New Customer" Button
    Click Link    New Customer

Verify Multiples Customers Are Displayed
    ${customer_number}=    Get Element Count    ${CUSTOMER_ROW_LOCATOR}
    Expect ${customer_number} is multiple

Verify Page Loaded
    Location Should Contain    ${CUSTOMER_URL}
    Wait Until Page Contains   ${CUSTOMER_TITLE}

Verify Page With New Customer Loaded
    Page Should Contain    ${ADD_CUSTOMER_SUCESS_TITLE}
    Page Should Contain    ${ADD_CUSTOMER_SUCESS_LABEL}