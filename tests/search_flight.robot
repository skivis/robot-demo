*** Settings ***
Documentation						Searching Flights Test Cases
Resource							../keywords/search_flights_keywords.robot
Suite Setup							Open search page
Suite Teardown						Close pages


*** Test Cases ***
The user can search for flights
	Select Departure				Paris
    Sleep							1
	Select Destination				London
    Sleep							1
	Search Flights
    Sleep							1
	Flights are found