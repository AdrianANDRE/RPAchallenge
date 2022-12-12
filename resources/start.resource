*** Settings ***
Library  Browser

*** Variables ***
${browser}  firefox
${url}      http://www.rpachallenge.com/
${start}    xpath=//button[contains(text(),"Start")]
*** Keywords ***
StartTheTestCase
    Open Browser    url=${url}  browser=${browser}   headless=True
    click   ${start}