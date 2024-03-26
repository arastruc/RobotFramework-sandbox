*** Settings ***
Suite Setup       Connect To Database    psycopg2    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database
Library           DatabaseLibrary
Library           OperatingSystem
Library           Collections

# TODO a refactorer dans des sous-classe et tests à rajouter (update assertion sur présence en base)

*** Variables ***
${DBHost}=         localhost
${DBName}=         postgres
${DBPass}=         admin
${DBPort}=         5432
${DBUser}=         postgres

*** Keywords ***

*** Test Cases ***
Create person table
    ${output} =    Execute SQL String    CREATE TABLE person (id integer unique,first_name varchar,last_name varchar);
    Log    ${output}
    Should Be Equal As Strings    ${output}    None
    Table Must Exist    person


Delete Table Person
    Execute Sql String    DROP TABLE person;

