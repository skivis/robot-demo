*** Settings ***
Documentation						Test suite with a single test for valid login.
...
...									This test has a workflow that is created using
Library								Selenium2Library


*** Variables ***
${browser}							Chrome
${url}								http://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587


*** Keywords ***
Enter username and password
	[Arguments]						${username1}  ${password1}
	Input Text						name : username  ${username1}
	Input Text						name : password  ${password1}

Click the login button
	Click Button					xpath : .//*[@class='button']


*** Test Cases ***
Login attempt with valid username and password
	Open Browser					${url}  ${browser}
	Enter username and password		supriya123  sampada123
	Click the login button
	Close Browser

Login attempt with invalid username and valid password
	Open Browser					${url}  ${browser}
	Enter username and password		supriya  sampada
	Click the login button
	Close Browser

Login attempt with valid username and invalid password
	Open Browser					${url}  ${browser}
	Enter username and password		supriya  sampada
	Click the login button
	Close Browser

Login attempt with invalid username and invalid password
	Open Browser					${url}  ${browser}
	Enter username and password		supriya  sampada
	Click the login button
	Close Browser