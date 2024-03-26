*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/SwapiApp.robot
Resource    ../Resources/DataManager.robot
Resource    ../Data/planets.robot

Suite Setup       Start Suite       
Suite Teardown    Common.Delete Session 


*** Keywords ***
Start Suite
    Common.Create Default Session
    #FROM CSV
    # ${CSV_PLANETS_DATA}=     Get Csv Data    C:\\Users\\aastr\\OneDrive\\Documents\\Roboframework\\api\\Data\\planets.csv
    # Set Suite Variable    ${CSV_PLANETS_DATA}    ${CSV_PLANETS_DATA}

    #FROM JSON
    ${CSV_PLANETS_DATA}=     Get Json Data    C:\\Users\\aastr\\OneDrive\\Documents\\Roboframework\\api\\Data\\planets.json
    Set Suite Variable    ${CSV_PLANETS_DATA}    ${CSV_PLANETS_DATA}


*** Test Cases ***
User can retrieve "Planets"	
    [Tags]    1001    Smoke    Planets
    
    SwapiApp.Check Planets are available

"Kamino" exists
    [Tags]    1002    Smoke    Planets
    
    SwapiApp.Check Kamino exists

Check Expected Planets are displayed
    [Tags]    1002    Smoke    Planets
  
    [Template]    SwapiApp.Check Expected Planets are displayed
    FOR    ${planet}    IN    @{CSV_PLANETS_DATA}
        ${planet}
    END

      ## Input Data Built In
    # [Template]    SwapiApp.Check Expected Planets are displayed
    #     ${PLANET_1}                  
    #     ${PLANET_2}                
    #     ${PLANET_3}                 
    #     ${PLANET_UNKNOWN}
    ## Export from CSV
   
        