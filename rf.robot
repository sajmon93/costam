*** Settings ***
Documentation    Loging on website
# Suite Setup      Open Browser      ${page} ${browser}
# Suite Teardown   Close Browser
Library          Selenium2Library
*** Variables ***
${page}          https://www.google.com
${LOGIN}         team666@vp.pl
${PASSWD}        qewsade1
${browser}       Firefox
*** Test Cases ***
 Loging to google
    Launch Browser
    Login to account
    Display google homepage

*** Keywords ***
Launch browser
    Open Browser    ${page}     ${browser}
    maximize browser window
Login to account
    # wait until element is visible  id=gb_70     1 Second
    click element    id=gb_70
    input text       id=identifierId  ${LOGIN}
    click element    id=identifierNext
    # clear element text  id= password
    wait until element is visible  xpath=//input[@name='password']
    input text       xpath=//input[@name='password']    ${PASSWD}
    click element    id=passwordNext
Display google homepage
    close browser

