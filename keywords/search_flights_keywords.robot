*** Settings ***
Library                             ../pages/SearchFlightPage.py  Chrome


*** Keywords ***
Open search page
    Open

Close pages
    Close

Select departure
    [Arguments]                     ${city}
    Select departure city           ${city}
    Sleep                           1

Select destination
    [Arguments]                     ${city}
    Select destination city         ${city}
    Sleep                           1

Select departure and destination
    [Arguments]                     ${fromcity}  ${tocity}
    Select departure city           ${fromcity}
    Select destination city         ${tocity}
    Search for flights
    @{flights}=                      Get Found Flights
    Set Test Variable               ${flights}

Search Flights
    Search for flights
    @{flights}=                      Get Found Flights
    Set Test Variable               ${flights}
    Sleep                           1

Flights are found
    Should Not Be Empty             ${flights}