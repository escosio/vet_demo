*** Settings ***
Documentation     Squarespace Support test
...
Resource          ../resources/resource.robot
Resource 		  ../resources/HomepageResources.robot
Library           Selenium2Library
Library 		  BuiltIn
Test Setup 		  Open Local Browser
Test Teardown     Clear Browser
Force Tags 	      bvt


*** Test Cases ***

Navigate to support article
	Given you go to homepage
	When you click on Support
	And you are taken to Support tab
	Then you can click on a support category
	And you can see a support article