*** Settings ***
Resource    ../resources/page.resource
Resource    ../resources/helper.resource
Resource    ../resources/start.resource

*** Test Cases ***
test
    StartTheTestCase
    Interact csv
    Take Screenshot
    Close Browser