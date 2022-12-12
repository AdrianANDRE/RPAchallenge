*** Settings ***
Library    Browser
Library    OperatingSystem
Library    String
Library    Collections
Resource    ../resources/page.resource

*** Keywords ***
Interact csv
    ${csv}=    Get File    challenge.csv
    @{read}=    Create List    ${csv}
    @{lines}=    Split To Lines    @{read}    1
    FOR    ${person}    IN    @{lines}
        @{split}    Split String    ${person}    ,
        input data    ${split}[0]    ${split}[1]    ${split}[2]    ${split}[3]    ${split}[4]    ${split}[5]    ${split}[6]
    END

