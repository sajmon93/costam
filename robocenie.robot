*** Settings ***
Documentation    My first RF test XD
Library          Selenium2Library
*** Variables ***
${APP}             uftHelp
${URL}             https://www.google.com
${BROWSER}         Firefox
*** Test Cases ***
[TC-001]-Launching the browser and search and launch the 'uftHelp' Application on Google.com
    Launch Browser
    Search Application On Google
    Launch Application

*** Keywords ***
Launch Browser
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
Search Application On Google
    Input Text    id=lst-ib    ${APP}
     click button  name = btnK
Launch Application
    Wait Until Element Is Visible    link=hehehszki     20 Seconds
    Click Element     link=User-Friendly Techy-Help