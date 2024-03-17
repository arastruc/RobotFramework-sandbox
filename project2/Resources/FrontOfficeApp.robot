*** Settings ***
Resource    PO/About.robot
Resource    PO/Contact.robot
Resource    PO/Landing.robot
Resource    PO/PortFolio.robot
Resource    PO/Services.robot
Resource    PO/Team.robot
Resource    PO/TopNav.robot


*** Keywords ***

Go to Landing Page
    Landing.Navigate to
    Landing.Verify Page Loaded
    TopNav.Verify Page Loaded

### Services ##
Go to "Services" Page
    TopNav.Navigate to "Services"
    Services.Verify Page Loaded

Validate "Services" Page
    Services.Verify "Three Services" Displayed

### PortFolio ##
Go to "PortFolio" Page
    TopNav.Navigate to "PortFolio"
    PortFolio.Verify Page Loaded

Validate "PortFolio" Page
    PortFolio.Verify "Six Items" Displayed


### ABOUT ##
Go to "About" Page
    TopNav.Navigate to "About"
    About.Verify Page Loaded
   
Validate "About" Page
    About.Verify 4 "News" are Displayed
    About.Verify "Inviting News" is Displayed

### TEAM ##
Go to "Team" Page
    TopNav.Navigate to "Team"
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Verify 3 "Partners" are Displayed


### CONTACT ##
Go to "Contact" Page
    TopNav.Navigate to "Contact"
    Contact.Verify Page Loaded