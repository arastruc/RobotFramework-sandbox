*** Settings ***
Library    ../Libraries/csv_file.py


*** Keywords ***
Get Csv Data
    [Arguments]    ${file_path}
    ${data}=    Read CSV from path ${filePath}
    RETURN    ${data}

Get Json Data
    [Arguments]    ${file_path}
    ${data}=    Read Json from path ${filePath}
    RETURN    ${data}