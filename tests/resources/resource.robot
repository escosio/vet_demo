*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           Selenium2Library

*** Variables ***
${HOMEURL}        https://www.squarespace.com
${BROWSER}        Chrome
${email}          scottd26+vettery@gmail.com
${pw}             vet123

# fake data
${host}			  	vetteryautomation.com
${key}			 	key
${RemoteUrl}      	http://${host}:${key}@hub.browserstack.com/wd/hub

*** Keywords ***

# SETUP

Open Local Browser 
    Open Browser    	http://localhost:4444    ${BROWSER}
    Maximize Browser Window

    
Open Remote Browser
	# Example of running tests in Browserstack, Saucelabs, etc
	[Arguments]         ${BROWSER}     ${dcaps}
	 Open Browser   url=${SiteUrl}   browser=${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=${dcaps}

Clear Browser
	Delete All Cookies
	Close Browser

