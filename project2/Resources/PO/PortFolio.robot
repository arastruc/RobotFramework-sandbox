*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PORTFOLIO_TITLE}=                      Portfolio
${PORTFOLIO_ITEM_COUNT}=                 6
${PORTFOLIO_ITEM_LOCATOR}=               class:portfolio-item
${PORTFOLIO_ROUND_ICONS_LABEL}=          Round Icons
${PORTFOLIO_STARTUP_FRAMEWORK_LABEL}=    Startup Framework
${PORTFOLIO_TREEHOUSE_LABEL}=            Treehouse
${PORTFOLIO_GOLDEN_LABEL}=               Golden
${PORTFOLIO_ESCAPE_LABEL}=               Escape
${PORTFOLIO_DREAM_LABEL}=                Dreams

 
*** Keywords ***

Verify "Six Items" Displayed
    ${items_count}=                SeleniumLibrary.Get Element Count            ${PORTFOLIO_ITEM_LOCATOR}
    Should Be True                 ${items_count} == ${PORTFOLIO_ITEM_COUNT}
    Page Should Contain Element    ${PORTFOLIO_ITEM_LOCATOR}                    ${PORTFOLIO_ROUND_ICONS_LABEL}
    Page Should Contain Element    ${PORTFOLIO_ITEM_LOCATOR}                    ${PORTFOLIO_STARTUP_FRAMEWORK_LABEL}
    Page Should Contain Element    ${PORTFOLIO_ITEM_LOCATOR}                    ${PORTFOLIO_TREEHOUSE_LABEL}
    Page Should Contain Element    ${PORTFOLIO_ITEM_LOCATOR}                    ${PORTFOLIO_GOLDEN_LABEL}
    Page Should Contain Element    ${PORTFOLIO_ITEM_LOCATOR}                    ${PORTFOLIO_ESCAPE_LABEL}
    Page Should Contain Element    ${PORTFOLIO_ITEM_LOCATOR}                    ${PORTFOLIO_DREAM_LABEL}


Verify Page Loaded
    Wait Until Page Contains  ${PORTFOLIO_TITLE}
    Verify "Six Items" Displayed