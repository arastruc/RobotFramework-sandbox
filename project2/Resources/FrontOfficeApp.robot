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

Three items are displayed in "Services" Section
    TopNav.Navigate to "Services"
    Services.Verify Page Loaded
    Services.Verify "Three Services" Displayed

Six items are displayed in "PortFolio" Section
    TopNav.Navigate to "Portfolio"
    PortFolio.Verify Page Loaded
    PortFolio.Verify "Six Items" Displayed


Four news are displayed in "About" Section With An Invited Image
    TopNav.Navigate to "About"
    About.Verify Page Loaded
    About.Verify 4 "News" are Displayed
    About.Verify "Inviting News" is Displayed

Three partners are displayed in "Team" Section
    TopNav.Navigate to "Team"
    Team.Verify Page Loaded
    Team.Verify 3 "Partners" are Displayed

A contact form is displayed in "Contact" Section
    TopNav.Navigate to "Contact"
    Contact.Verify Page Loaded
  