*** Settings ***
Documentation  These are some XML tests
Resource  ../Resources/XML/Breakfast_Menu.robot
Resource  ../Resources/XML/Test_XML_Common.robot

Suite Teardown    Should reinitialize menu.xml with backup file
# Many ways to run:
# robot -d results/xml tests/XML_Tests.robot
# robot -d results/xml -i XML tests
# robot -d results tests

*** Variables ***
${XML_MENU_PATH} =  explore-libraries/Inputs/XML/menu.xml
${XML_MENU_BACKUP_PATH} =  explore-libraries/Inputs/XML/menu-backup.xml
${EXPECTED_MENU_COUNT} =  1
${EXPECTED_FOOD_COUNT} =  5


*** Test Cases ***
Verify Menu Count
    [Tags]  XML
    Breakfast_Menu.Should be one menu in the file

Verify Root
    [Tags]  XML
    Breakfast_Menu.Verify Menu Name

Verify Food Count
    [Tags]  XML
    Breakfast_Menu.Verify Food Count    ${EXPECTED_FOOD_COUNT}

Verify First Food
    [Tags]  XML
    Breakfast_Menu.Verify First Food Name
    Breakfast_Menu.Verify First Food Price
    Breakfast_Menu.Verify First Food Calories

Add a Food
    [Tags]  XML
    Breakfast_Menu.Add New Food

Verify New Food Was Added
    [Tags]  XML
    Breakfast_Menu.Verify New Food Exists