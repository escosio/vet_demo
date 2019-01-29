*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           Selenium2Library

*** Keywords ***

you go to homepage
	Go To 								${HOMEURL} 
	Wait Until Element Is Visible 		css=.home-carousel

you log into an account
	Wait Until Element Is Visible 		css=.login-button
	Click Element 						css=.login-button
	Wait Until Element Is Visible 		css=[class^="TransitioningRoute__Transition"]
	Input Text 							css=.username 	 	${email} 
	Input Text 							css=.password 		${pw}
	# Click Element 						css=.login-button
	Click Button 						Log In


you are successfully logged in
	Wait Until Element Is Visible 			css=[class^="ProfileMenu__Container"]
	Wait Until Element Is Not Visible 		css=.login-button


# Templates

you navigate to Templates
	Wait Until Element Is Visible 			css=.templates-nav-button 
	Click Element 							css=.templates-nav-button
	Wait Until Element Is Visible 			css=.template-grid-hero
	Location Should Be 						${HOMEURL}/templates


search for template
	Wait Until Element Is Visible 			css=.input-container
	Input Text 								css=.search-templates-input 		${searchterm}
	Wait Until Element Is Visible 			css=.arrow
	Click Element 							css=.arrow

a template is returned
	Wait Until Element Contains 			css=.template-info-title 			${searchterm}


# Customers

you click on customers
	# Wait Until Element Is Visible 			css=.customers-button
	# Click Element 							css=.customers-button
	Go To 									${HOMEURL}/customers

you are taken to the customer page
	Wait Until Element Is Visible 			css=.hero-customer

# Tour menu
you hover over tour and click on Websites
	Mouse Over 			css=.header__navigation__dropdown-hover__button__desktop
	Wait Until Element Is Visible 		css=.websites-link
	Click Element 						css=.websites-link

you are taken to the websites page
	Wait Until Element Is Visible 		css=.hero__background
	Location Should Be 					${HOMEURL}/website-design
	Focus 								css=.two-up__left 
	Wait Until Page Contains 			Customizable Layouts


# Support
you click on Support
	Wait Until Element Is Visible 		css=.support-button
	Click Element 						css=.support-button

you are taken to Support tab
	Sleep 								3
	Select Window 						Squarespace Help - Knowledge Base

you can click on a support category
	Focus 								css=.category-article
	Click Element 						css=.category-article

you can see a support article
	Wait Until Element Is Visible 		css=.article-header
	Location Should Contain 			hc/en-us/articles
