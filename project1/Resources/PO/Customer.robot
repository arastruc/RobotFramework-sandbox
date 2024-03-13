*** Settings ***
Library    SeleniumLibrary
Library    ../../Libraries/comparison.py

*** Keywords ***
Verify Page Loaded
    Location Should Contain    customers.html
    Wait Until Page Contains  Our Happy Customers

Click On Add New Customer
    Click Link    New Customer

Verify Page With New Customer Loaded
    Page Should Contain    Success
    Page Should Contain    Success! New customer added.

Verify Multiples Customers Are Displayed
    ${min_customer_number}=    Set Variable    2
    ${customer_number}=    Get Element Count    //html/body/div/div/table/tbody/tr

    # Comparison not working need to add custom method (problem with casting string and integer)
    Expect ${customer_number} greater than ${min_customer_number}