*** Settings ***
Library     RequestsLibrary
Resource    ../Common.robot

*** Variables ***
${PLANETS_RESSOURCE}=           planets

*** Keywords ***

Get All Planets
    ${response}=    GET On Session   ${SWAPI_DEFAULT_SESSION_ALIAS}    ${PLANETS_RESSOURCE}
    Status Should Be    200
    Log      ${response.json()}
    Should Be Equal As Strings      ${response.json()['count']}  60
    RETURN   ${response.json}


Get All Planets Url
    ${response_json}=    Get All Planets
    FOR  ${planet}  IN  @{response_json()['results']}
        Get Known Planet By Url   ${planet['url']}
        Log    ${planet['url']}
    END
    

Get Known Planet By Id
    [Arguments]    ${id}    ${name}
    ${response}=    GET On Session   ${SWAPI_DEFAULT_SESSION_ALIAS}    ${PLANETS_RESSOURCE}/${id}  
    Status Should Be    200
    Log      ${response.json()}
    Should Be Equal As Strings      ${response.json()['name']}  ${name}

Get Known Planet By Url
    [Arguments]    ${url}
    Log To Console    Appel GET ${url}
    ${response}=    GET    ${url}  
    Status Should Be    200
    Log      ${response.json()['name']}
