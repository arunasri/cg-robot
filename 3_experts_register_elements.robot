*** Settings ***
Library          Selenium2Library
Suite Setup      Start Browser
Suite Teardown   Stop Browser
*** Variables ***
${DELAY}  0
${BASE_URL}  http://www.caregeneral.net
*** Keywords ***
Start Browser
  Open Browser  ${BASE_URL}	browser=chrome
Stop Browser
  Log  Stopping the Browser
  Close All Browsers
*** Test Cases ***
experts_register_elements
	Go To  ${BASE_URL}/experts/register
	Page Should Contain Element  css=h1.page-title  Join Our Expert Network
	Page Should Contain Element  css=h3.greetings-top  Joining CareGeneral is Fast, Easy and Free
	Page Should Contain Element  css=h3.greetings-bottom  Just Create a Profile and Caregeneral will bring clients to you!
	Page Should Contain Element  id=user_name
	Page Should Contain Element  id=user_email
	Page Should Contain Element  id=user_password
	Page Should Contain Element  link=Show  Show
	Page Should Contain Element  css=div.strength_text > div  exact:Strength: none
	Page Should Contain Element  id=user_password_confirmation
	Page Should Contain Element  xpath=(//a[contains(text(),'Show')])[2]  Show
	Page Should Contain Element  //form[@id='new_user']/p[4]/div/div/div  exact:Strength: none
	Page Should Contain Element  id=user_accepted_policy_and_terms
	Page Should Contain Element  //form[@id='new_user']/p[5]/label  I accept CareGeneral's Privacy Policy and Terms of Service.
	Page Should Contain Element  link=Sign In  Sign In
	Page Should Contain Element  link=Forgot Password  Forgot Password
	Page Should Contain Element  link=Didn't receive unlock instructions?  exact:Didn't receive unlock instructions?
	Page Should Contain Element  link=Contact Us  Contact Us
	Page Should Contain Element  css=button.common-btn[type="submit']  Sign Up
	Page Should Contain Element  id=badge-app-store
	Page Should Contain Element  link=Text me the link  Text me the link
	Page Should Contain Element  css=div.footer-area > a  Privacy Policy
	Page Should Contain Element  xpath=(//a[contains(text(),'Terms of Service')])[2]  Terms of Service