*** Keywords ***
Login As User
	Go To  ${BASE_URL}/login
	Input Text  id=user_email  prabhakar+superadmin@bigbinary.com
	Input Text  id=user_password  welcome
	Click Element  css=button.common-btn