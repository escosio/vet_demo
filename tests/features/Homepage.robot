*** Settings ***
Documentation     Squarespace homepage tests
...
Resource          ../resources/resource.robot
Resource 		  ../resources/HomepageResources.robot
Library           Selenium2Library
Library 		  BuiltIn
Test Setup 		  Open Local Browser
Test Teardown     Clear Browser
Force Tags 	      bvt



*** Test Cases ***

Log in test
	[Tags]  login
	Given you go to homepage
	When you log into an account
	Then you are successfully logged in

Navigate to Web Design via Tour menu
	Given you go to homepage
	When you hover over tour and click on Websites
	Then you are taken to the websites page



