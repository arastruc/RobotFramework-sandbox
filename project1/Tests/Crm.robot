*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/CrmApp.robot

Test Setup    Common.Open And Resize Browser
Test Teardown    Common.Wait And Close Browser

*** Variables ***
${BROWSER}=        firefox
&{CUSTOMER_PROFILE_DICT}=    
...    email=email@email.com    
...    first_name=firstName    
...    last_name=lastName    
...    city=Dallas    
...    state_value=TX    
...    state_label=Texas
@{MY_LIST}=     toto    tutu    titi    fifi    loulou
${VALID_LOGIN_EMAIL}=    toto@gmail.com
${VALID_LOGIN_PASSWORD}=    toto



*** Test Cases ***

# Log List Variables
#     FOR    ${item}    IN    @{MY_LIST}
#         Log    ${item}
#     END
#     Log    ${MY_LIST}[2]

# Log Dict Variables
#     FOR   ${key}    ${value}    IN    &{MY_DICT}
#         Log Many    ${key}    ${value}
#         Log    ${value}
#     END

#     Log    Just Password
#     Log    ${MY_DICT}[password]

Home page should load	
    [Documentation]    La page d'accueil s'affiche
    [Tags]    1001    Smoke    Home
    
    CrmApp.Go to "Home" Page

Login should succeed with valid credentials	
    [Documentation]    L'utilisateur se connecte avec ses identifiants
    [Tags]    1002    Smoke    Login

    CrmApp.Go to "Home" Page
    CrmApp.Go to "Login" Page
    CrmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Login should fail with missing credentials	
    [Documentation]    L'utilisateur reste bloqué sur la page d'accueil si il ne donne pas les bons identifiants
    [Tags]    1003    Functional    Login

    CrmApp.Go to "Home" Page
    CrmApp.Go to "Login" Page
    CrmApp.Login With Invalid Credentials


Logged in user should be able to log out	
    [Documentation]    L'utilisateur peut se déconnecter en cliquant sur le bouton
    [Tags]    1005    Functional    Login

    CrmApp.Go to "Home" Page
    CrmApp.Go to "Login" Page
    CrmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Log out

Customers page should display multiple customers	
    [Documentation]    La page de clients doit afficher plusieurs clients
    [Tags]    1006    Functional    Contacts

    CrmApp.Go to "Home" Page
    CrmApp.Go to "Login" Page
    CrmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Check That There Are Multiples Customers

Logged in user should be able to cancel adding new customer and back to customer page
	
    [Documentation]    This is some basic info about the test
    [Tags]    1007    Functional    Customer

    CrmApp.Go to "Home" Page
    CrmApp.Go to "Login" Page

    CrmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Go to "New Customer" Page
    
Should be able to add new customer	
    [Documentation]    This is some basic info about the test
    [Tags]    1008    Functional    Customer

    CrmApp.Go to "Home" Page
    CrmApp.Go to "Login" Page

    CrmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

    CrmApp.Go to "New Customer" Page
    CrmApp.Add A New Customer   ${CUSTOMER_PROFILE_DICT}