*** Settings ***
Library        RequestsLibrary
Resource       ../Data/url.robot



*** Keywords ***
Create Default Session
    Set Suite Variable    ${SWAPI_DEFAULT_SESSION_ALIAS}    my_swapi_session
    Create Session        ${SWAPI_DEFAULT_SESSION_ALIAS}    ${SWAPI_URL}    {"Content-Type":"application/json", "Authorization":"Bearer zkzg1VPnhcMm7uv"}

Delete Session
    Delete All Sessions