*** Settings ***
Library     Dialogs
Library     BuiltIn
Library     Collections
Resource    PO/AddCustomer.robot
Resource    PO/Login.robot
Resource    PO/Home.robot
Resource    PO/Customer.robot
Resource    PO/TopBar.robot
Resource    PO/Logout.robot

*** Variables ***
&{FIRST_CUSTOMER_PROFILE_DICT}=    
...    email=profile1@email.com    
...    first_name=profile1    
...    last_name=lastName    
...    city=Dallas    
...    state_value=TX    
...    state_label=Texas
...    gender= male

&{SECOND_CUSTOMER_PROFILE_DICT}=    
...    email=profile2@email.com    
...    first_name=profile2    
...    last_name=lastName    
...    city=Washington    
...    state_value=DC    
...    state_label=District of Columbia
...    gender=female

*** Keywords ***

Add A New Customer
    # AddCustomer.Fill Customer Form with Anonym Profile
    ${selected_customer_profile}=  Get Selection From User          Which user?    User1    User2

    Run Keyword if    "${selected_customer_profile}" == "User1"    AddCustomer.Fill "Customer Form" with Known Profile   ${FIRST_CUSTOMER_PROFILE_DICT}
    Run Keyword if    "${selected_customer_profile}" == "User2"    AddCustomer.Fill "Customer Form" with Known Profile   ${SECOND_CUSTOMER_PROFILE_DICT}
 
    AddCustomer.Submit Customer
    Customer.Verify Page With New Customer Loaded


Cancel Adding A New Customer 
    [Arguments]    ${customer_profile}
    AddCustomer.Fill "Customer Form" with Known Profile    ${customer_profile}
    AddCustomer.Click on "Cancel" Button
    Customer.Verify Page Loaded
    Run Keyword And Expect Error    Page should have contained text 'Success' but did not.    Customer.Verify Page With New Customer Loaded

Check That There Are Multiples Customers	
    Customer.Verify Multiples Customers Are Displayed

Go to "Home" Page
    Home.Navigate to

Go to "Login" Page
    TopBar.Click "Sign In" Link
    Login.Verify Page Loaded

Go to "New Customer" Page
    Customer.Click On "Add New Customer" Button

Login With Invalid Credentials	
    TopBar.Click "Sign In" Link
    Login.Sign In With Wrong Credentials
    Login.Verify Page Loaded

Login With Valid Credentials	
    [Arguments]    ${login_email}    ${login_password}
    TopBar.Click "Sign In" Link
    Login.Sign In    ${login_email}    ${login_password}
    Customer.Verify Page Loaded

Log out
    TopBar.Click "Sign Out" Link
    Logout.Verify Page Loaded