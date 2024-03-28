*** Settings ***
Resource    PO/FrontOffice.About.robot
Resource    PO/FrontOffice.Contact.robot
Resource    PO/FrontOffice.Landing.robot
Resource    PO/FrontOffice.PortFolio.robot
Resource    PO/FrontOffice.Services.robot
Resource    PO/FrontOffice.Team.robot
Resource    PO/FrontOffice.TopNav.robot


*** Keywords ***

Go to Landing Page
    FrontOffice.Landing.Navigate to
    FrontOffice.Landing.Verify Page Loaded
    FrontOffice.TopNav.Verify Page Loaded

### Services ##
Go to "Services" Page
    FrontOffice.TopNav.Navigate to "Services"
    FrontOffice.Services.Verify Page Loaded

Validate "Services" Page
    FrontOffice.Services.Verify "Three Services" Displayed

### PortFolio ##
Go to "PortFolio" Page
    FrontOffice.TopNav.Navigate to "PortFolio"
    FrontOffice.PortFolio.Verify Page Loaded

Validate "PortFolio" Page
    FrontOffice.PortFolio.Verify "Six Items" Displayed


### ABOUT ##
Go to "About" Page
    FrontOffice.TopNav.Navigate to "About"
    FrontOffice.About.Verify Page Loaded
   
Validate "About" Page
    FrontOffice.About.Verify 4 "News" are Displayed
    FrontOffice.About.Verify "Inviting News" is Displayed

### TEAM ##
Go to "Team" Page
    FrontOffice.TopNav.Navigate to "Team"
    FrontOffice.Team.Verify Page Loaded

Validate "Team" Page
    FrontOffice.Team.Verify 3 "Partners" are Displayed


### CONTACT ##
Go to "Contact" Page
    FrontOffice.TopNav.Navigate to "Contact"
    FrontOffice.Contact.Verify Page Loaded