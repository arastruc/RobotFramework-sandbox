*** Settings ***
Library  OperatingSystem

*** Variables ***

*** Keywords ***
Should reinitialize menu.xml with backup file
    Remove File  ${XML_MENU_PATH}
    Copy File  ${XML_MENU_BACKUP_PATH}  ${XML_MENU_PATH}
