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


Get Known Planet By Id
    [Arguments]    ${id}    ${name}
    ${response}=    GET On Session   ${SWAPI_DEFAULT_SESSION_ALIAS}    ${PLANETS_RESSOURCE}/${id}  
    Status Should Be    200
    Log      ${response.json()}
    Should Be Equal As Strings      ${response.json()['name']}  ${name}
