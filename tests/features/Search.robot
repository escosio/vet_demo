*** Settings ***
Documentation     Squarespace Search test
...
Resource          ../resources/resource.robot
Resource 		  ../resources/HomepageResources.robot
Library           Selenium2Library
Library 		  BuiltIn
Test Setup 		  Open Local Browser
Test Teardown     Clear Browser
Force Tags 	      bvt

*** Variables ***

${searchterm} 		West


*** Test Cases ***

Search for Template
	Given you go to homepage
	When you navigate to Templates
	And search for template
	Then a template is returned