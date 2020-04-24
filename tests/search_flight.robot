*** Settings ***
Documentation                       Searching Flights Test Cases
Resource                            ../keywords/search_flights_keywords.robot
Suite Setup                         Open search page
Suite Teardown                      Close pages


*** Test Cases ***
The user can search for flights
    Select departure                Paris
    Select destination              London
    Search flights
    Flights are found