*** Settings ***
Library    Browser

*** Variables ***
&{locatorRPA}    email=//input[@ng-reflect-name="labelEmail"]
...    lastname=//input[@ng-reflect-name="labelLastName"]
...    address=//input[@ng-reflect-name="labelAddress"]
...    rolecompagny=//input[@ng-reflect-name="labelRole"]
...    firstname=//input[@ng-reflect-name="labelFirstName"]
...    companyname=//input[@ng-reflect-name="labelCompanyName"]
...    phonenumber=//input[@ng-reflect-name="labelPhone"]
...    buttonsubmit=//input[@value="Submit"]
*** Keywords ***
input data
    [Arguments]    ${firstname}    ${lastname}    ${companyname}    ${rolecompagny}    ${address}    ${email}    ${phonenumber}
    Fill Text    ${locatorRPA}[firstname]    ${firstname}
    Fill Text    ${locatorRPA}[lastname]    ${lastname}
    Fill Text    ${locatorRPA}[companyname]    ${companyname}
    Fill Text    ${locatorRPA}[rolecompagny]    ${rolecompagny}
    Fill Text    ${locatorRPA}[address]    ${address}
    Fill Text    ${locatorRPA}[email]    ${email}
    Fill Text    ${locatorRPA}[phonenumber]    ${phonenumber}
    Click    ${locatorRPA}[buttonsubmit]