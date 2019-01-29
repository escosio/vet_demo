*** Settings ***
Documentation     Squarespace homepage test
...
Resource          ../resources/resource.robot
Library           Selenium2Library
Library 		  BuiltIn
Test Setup 		  Open Local Browser
Test Teardown     Clear Browser
Force Tags 	      bvt

*** Variables ***

${searchterm} 		West


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

Search for Template
	Given you go to homepage
	When you navigate to Templates
	And search for template
	Then a template is returned

Navigate to Customers page
	Given you go to homepage
	When you click on customers
	Then you are taken to the customer page

Navigate to support article
	Given you go to homepage
	When you click on Support
	And you are taken to Support tab
	Then you can click on a support category
	And you can see a support article



