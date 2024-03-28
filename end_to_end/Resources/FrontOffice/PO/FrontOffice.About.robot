*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ABOUT_TITLE}=                      Portfolio
${ABOUT_INFO_TEXT_COUNT}=            4
${ABOUT_INFO_TEXT_LOCATOR}=          class:timeline-panel
${ABOUT_INFO_IMAGE_LOCATOR}=         class:timeline-image
${ABOUT_FIRST_INFO_LABEL}=           2009-2011
${ABOUT_SECOND_INFO_LABEL}=          March 2011
${ABOUT_THIRD_INFO_LABEL}=           December 2012
${ABOUT_FOURTH_INFO_LABEL}=          July 2014
${ABOUT_LAST_IMAGE_LABEL}=           Be Part Of Our Story!

 
*** Keywords ***
Verify 4 "News" are Displayed
    ${info_text_count}=            SeleniumLibrary.Get Element Count             ${ABOUT_INFO_TEXT_LOCATOR}
    Should Be True                 ${info_text_count} == ${ABOUT_INFO_TEXT_COUNT}
 
    Page Should Contain Element    ${ABOUT_INFO_TEXT_LOCATOR}                    ${ABOUT_FIRST_INFO_LABEL}
    Page Should Contain Element    ${ABOUT_INFO_TEXT_LOCATOR}                    ${ABOUT_SECOND_INFO_LABEL}
    Page Should Contain Element    ${ABOUT_INFO_TEXT_LOCATOR}                    ${ABOUT_THIRD_INFO_LABEL}
    Page Should Contain Element    ${ABOUT_INFO_TEXT_LOCATOR}                    ${ABOUT_FOURTH_INFO_LABEL}

Verify "Inviting News" is Displayed
    Page Should Contain Element    ${ABOUT_INFO_IMAGE_LOCATOR}                   ${ABOUT_LAST_IMAGE_LABEL}


Verify Page Loaded
    Wait Until Page Contains  ${ABOUT_TITLE}
