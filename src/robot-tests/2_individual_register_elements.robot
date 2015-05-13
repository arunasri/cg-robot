*** Settings ***
Library          Selenium2Library
Suite Setup      Start Browser
Suite Teardown   Stop Browser
Resource  ../settings/base.robot
*** Variables ***
${DELAY}  0
${BASE_URL}  http://caregeneral.net
*** Keywords ***
Start Browser
  Open Browser  ${BASE_URL}	browser=chrome
Stop Browser
  Log  Stopping the Browser
  Close All Browsers
*** Test Cases ***
2_individual_register_elements
	Login As User
	Go To  ${BASE_URL}/individuals/register
	Select Window  null
	Element Should Contain  css=h1.page-title  Join CareGeneral
	Select Window  null
	Element Should Contain  css=h3.greetings-top  Joining CareGeneral is Fast and Easy
	Element Should Contain  css=h3.greetings-bottom  Just enter your name, email address and a password!
	Element Should Contain  id=user_name
	Element Should Contain  id=user_email
	Element Should Contain  id=user_password
	Element Should Contain  link=Show  Show
	Element Should Contain  css=div.strength_text > div  exact:Strength: none
	Element Should Contain  id=user_password_confirmation
	Element Should Contain  xpath=(//a[contains(text(),'Show')])[2]  Show
	Element Should Contain  //form[@id='new_user']/p[4]/div/div/div  exact:Strength: none
	Element Should Contain  id=user_accepted_policy_and_terms
	Element Should Contain  //form[@id='new_user']/p[5]/label  I accept CareGeneral's Privacy Policy and Terms of Service.
	Element Should Contain  link=Sign In  Sign In
	Element Should Contain  link=Forgot Password  Forgot Password
	Element Should Contain  link=Didn't receive unlock instructions?  exact:Didn't receive unlock instructions?
	Element Should Contain  link=Contact Us  Contact Us
	Element Should Contain  css=button.common-btn  Sign Up
	Element Should Contain  id=badge-app-store
	Element Should Contain  link=Text me the link  Text me the link
	Element Should Contain  css=div.footer-area > a  Privacy Policy
	Element Should Contain  xpath=(//a[contains(text(),'Terms of Service')])[2]  Terms of Service