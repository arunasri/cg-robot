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
corporateGulliverRegisterElements
	Go To  ${BASE_URL}/corporate/gulliver/register
	Page Should Contain Element  css=a.logo.navbar-brand
	Page Should Contain Element  css=.logo.navbar-brand>img[src*="logo-3633522c14df66d4e2d45f903b84d296.png"]
	Page Should Contain Element  css=#corporate-banner
	Page Should Contain Element  css=div#corporate-banner > img[src*='guilliver.png']
	Page Should Contain Element  css=#new_user>h2  Join CareGeneral
	Page Should Contain Element  id=user_name
	Page Should Contain Element  css=label.required.control-label:nth(0)  * Name
	Page Should Contain Element  id=user_email
	Page Should Contain Element  css=label.required.control-label:nth(1)  * Email
	Page Should Contain Element  id=user_password
	Page Should Contain Element  css=label.required.control-label:nth(2)  * Password
	Page Should Contain Element  link=Show  Show
	Page Should Contain Element  css=div.strength_text > div  exact:Strength: none
	Page Should Contain Element  id=user_password_confirmation
	Page Should Contain Element  css=label.required.control-label:nth(3)  * Confirmation
	Page Should Contain Element  xpath=(//a[contains(text(),'Show')])[2]  Show
	Page Should Contain Element  //form[@id='new_user']/p[4]/div/div/div  exact:Strength: none
	Page Should Contain Element  id=user_accepted_policy_and_terms
	Page Should Contain Element  //form[@id='new_user']/p[5]/label  I accept CareGeneral's Privacy Policy and Terms of Service.
	Page Should Contain Element  link=Privacy Policy  Privacy Policy
	Page Should Contain Element  link=Terms of Service  Terms of Service
	Page Should Contain Element  css=.common-btn  Sign Up
	#verifyAttribute  css=button@disabled  disabled
	Page Should Contain Element  css=a > span  exact:Already Signed-up? Click Here
	Page Should Contain Element  link=Already Signed-up? Click Here  Already Signed-up? Click Here
	Page Should Contain Element  link=Contact Us  Contact Us
	Page Should Contain Element  id=badge-app-store
	Page Should Contain Element  link=Text me the link  Text me the link
	Page Should Contain Element  css=div.footer-area > a  Privacy Policy
	Page Should Contain Element  xpath=(//a[contains(text(),'Terms of Service')])[2]  Terms of Service
	#undefined  undefined  undefined
	#undefined  undefined  undefined
	Input Text  css=#user_name  gulliver Test
	Input Text  css=#user_email  gulliver@example.com
	Input Text  css=#user_password  123456
	Input Text  css=#user_password_confirmation  123456
	Click Element  css=#user_accepted_policy_and_terms
	#verifyNotAttribute  css=.common-btn@disabled  disabled
	Click Element  css=button.common-btn
	#waitForText  css=div.alert.alert-error  Email already taken.
	Page Should Contain Element  css=div.alert.alert-error  Email already taken.
	#undefined  undefined  undefined
	Input Text  css=#user_name  gulliver Test
	Input Text  css=#user_email  gulliverone@example.com
	Input Text  css=#user_password  123
	Input Text  css=#user_password_confirmation  123
	#verifyNotAttribute  css=.common-btn@disabled  disabled
	Click Element  css=button.common-btn
	#waitForText  css=div.alert.alert-error  Password is too short (minimum is 6 characters).
	Page Should Contain Element  css=div.alert.alert-error  Password is too short (minimum is 6 characters).