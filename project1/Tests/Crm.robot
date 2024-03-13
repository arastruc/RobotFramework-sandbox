*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Login.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/Customer.robot
Resource    ../Resources/PO/TopBar.robot
Resource    ../Resources/PO/Logout.robot

Test Setup    Common.Open And Resize Browser
Test Teardown    Common.Wait And Close Browser


*** Variables ***


*** Test Cases ***

Home page should load	
    [Documentation]    La page d'accueil s'affiche
    [Tags]    1001    Smoke    Home

    Home.Verify Page Loaded

Login should succeed with valid credentials	
    [Documentation]    L'utilisateur se connecte avec ses identifiants
    [Tags]    1002    Smoke    Login

    Home.Verify Page Loaded

    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Sign In

    Customer.Verify Page Loaded

Login should fail with missing credentials	
    [Documentation]    L'utilisateur reste bloqué sur la page d'accueil si il ne donne pas les bons identifiants
    [Tags]    1003    Functional    Login

    Home.Verify Page Loaded

    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Sign In With Wrong Credentials

"Remember me" checkbox should persist email address	
    [Documentation]    Le bouton Remember me permet de garder en mémoire les identifiants après la déconnexion
    [Tags]    1004    Functional    Login

    Home.Verify Page Loaded

    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Sign In

    TopBar.Click On Sign Out
    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Should Display login and password

Should be able to log out	
    [Documentation]    L'utilisateur peut se déconnecter en cliquant sur le bouton
    [Tags]    1005    Functional    Login

    Home.Verify Page Loaded

    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Sign In

    TopBar.Click On Sign Out

    Logout.Verify Page Loaded

Customers page should display multiple customers	
    [Documentation]    La page de clients doit afficher plusieurs clients
    [Tags]    1006    Smoke    Contacts

    Home.Verify Page Loaded

    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Sign In

    Customer.Verify Page Loaded
    Customer.Verify Multiples Customers Are Displayed

Should be able to cancel adding new customer and back to customer page
	
    [Documentation]    This is some basic info about the test
    [Tags]    1007    Smoke    Home

    Home.Verify Page Loaded
    TopBar.Click On Sign In

    Login.Verify Page Loaded
    Login.Sign In

    Customer.Verify Page Loaded
    Customer.Click on Add New Customer
    AddCustomer.Cancel Adding Customer
    Customer.Verify Page Loaded
    Run Keyword And Expect Error    Page should have contained text 'Success' but did not.    Customer.Verify Page With New Customer Loaded
    

    
