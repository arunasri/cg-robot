*** Settings ***
Library          Selenium2Library
Suite Setup      Start Browser
Suite Teardown   Stop Browser
*** Variables ***
${DELAY}  0
${BASE_URL}  http://www.caregeneral.net/
*** Keywords ***
Start Browser
  Open Browser  ${BASE_URL}	browser=chrome
Stop Browser
  Log  Stopping the Browser
  Close All Browsers
*** Test Cases ***
login
	Go To  ${BASE_URL}/login
	Input Text  id=user_email  prabhakar+superadmin@bigbinary.com
	Input Text  id=user_password  welcome
	Click Element  css=button.common-btn