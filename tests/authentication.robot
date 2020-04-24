*** Settings ***
Documentation						Authentication Test Cases
Library								Selenium2Library
Suite Setup							Open browser  ${url}  ${browser}
Suite Teardown						Close Browser


*** Variables ***
${url}								https://demo.nopcommerce.com
${browser}							Chrome


*** Keywords ***
Login To Application
	Click Link						//a[@class='ico-login']
	Wait Until Page Contains		Welcome, Please Sign In!
	Sleep							1
	Input Text						id:Email  troy.prey@mailinator.com
	Input Password					id:Password  password
	Click Button					Log in


*** Test Cases ***
A User Can Login
	[Documentation]					As a user, I can login with correct credentials
	Login To Application
	Element Text Should Be			//a[@class="ico-account"]  My account
