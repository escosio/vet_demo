*** Settings ***
Documentation     Squarespace Customers test
...
Resource          ../resources/resource.robot
Resource 		  ../resources/HomepageResources.robot
Library           Selenium2Library
Library 		  BuiltIn
Test Setup 		  Open Local Browser
Test Teardown     Clear Browser
Force Tags 	      bvt



*** Test Cases ***

Navigate to Customers page
	Given you go to homepage
	When you click on customers
	Then you are taken to the customer page
