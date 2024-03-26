*** Settings ***
Library     RequestsLibrary
Library    SeleniumLibrary
Resource    ../Common.robot

*** Variables ***

${EXPECTED_PLANET_COUNT}=       60
${HTTP_STATUS_OK}=              200
${PLANETS_RESSOURCE}=           planets


*** Keywords ***

Get All Planets
    ${response}=    GET On Session   ${SWAPI_DEFAULT_SESSION_ALIAS}    ${PLANETS_RESSOURCE}
    Status Should Be    ${HTTP_STATUS_OK}
    Log      ${response.json()}
    Should Be Equal As Strings      ${response.json()['count']}  ${EXPECTED_PLANET_COUNT}
    RETURN   ${response.json}


Get All Planets Url
    ${response_json}=    Get All Planets
    FOR  ${planet}  IN  @{response_json()['results']}
        Get Planet By Url   ${planet['url']}    ${HTTP_STATUS_OK}
        Log    ${planet['url']}
    END
    

Get Planet By Id
    [Arguments]    ${id}    ${name}
    ${response}=    GET On Session   ${SWAPI_DEFAULT_SESSION_ALIAS}    ${PLANETS_RESSOURCE}/${id}  
    Status Should Be    ${HTTP_STATUS_OK}
    Log      ${response.json()}
    Should Be Equal As Strings      ${response.json()['name']}  ${name}

Get Planet By Url
    [Arguments]    ${url}    ${status}
    Log To Console    Appel GET ${url}
    ${response}=    GET    ${url}  
    Status Should Be    ${status}
    Log      ${response.json()['name']}


Check Planet By Data
    [Arguments]    ${PLANETS_DATA}
    ${planet_response}=    GET On Session   ${SWAPI_DEFAULT_SESSION_ALIAS}    ${PLANETS_RESSOURCE}/${PLANETS_DATA['id']}   expected_status=${PLANETS_DATA['status']}
    Run Keyword If      ${planet_response.status_code} == ${HTTP_STATUS_OK}       Check Planet Properties   ${planet_response.json()}   ${PLANETS_DATA}
   
    
Check Planet Properties
    [Arguments]    ${PLANET_RESPONSE}    ${EXPECTED_PLANETS_DATA}
    Should Be Equal As Strings      ${PLANET_RESPONSE['name']}  ${EXPECTED_PLANETS_DATA['name']}
    Should Be Equal As Strings      ${PLANET_RESPONSE['population']}  ${EXPECTED_PLANETS_DATA['population']}