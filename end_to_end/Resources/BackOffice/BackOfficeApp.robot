*** Settings ***
Resource    PO/BackOffice.Landing.robot

*** Keywords ***
Go to Landing Page
    BackOffice.Landing.Navigate to
    BackOffice.Landing.Verify Page Loaded
