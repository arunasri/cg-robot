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
elements_verification_on_superadmin_page
	Go To  ${BASE_URL}/patients
	Click Element  link=William
	Page Should Contain Element  link=William  William
	Click Element  link=Super Admin
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(0)  Profiles
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(1)  Super Admin
	Page Should Contain Element  link=Experts  Experts
	Page Should Contain Element  css=span.user_name  prabhakar+superadmin
	Page Should Contain Element  css=.user_subnav>li>a:nth(0)  My Info
	Page Should Contain Element  css=.user_subnav>li>a:nth(1)  Translations
	Page Should Contain Element  css=.user_subnav>li>a:nth(2)  Super Admin
	Page Should Contain Element  css=.user_subnav>li>a:nth(3)  Admin
	Page Should Contain Element  css=.user_subnav>li>a:nth(4)  Help
	Page Should Contain Element  css=.user_subnav>li>a:nth(5)  Getting Started
	Page Should Contain Element  css=.user_subnav>li>a:nth(6)  Get Mobile App
	Page Should Contain Element  css=.user_subnav>li>a:nth(7)  Contact Us
	Page Should Contain Element  css=.user_subnav>li>a:nth(8)  Feedback and Suggestions
	Page Should Contain Element  css=.user_subnav>li>a:nth(9)  Change Language
	Page Should Contain Element  css=.user_subnav>li>a:nth(10)  Log Out
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(2)  Organizations
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(3)  IBM
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(4)  DJ
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(5)  Device tokens
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(6)  Push notifications
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(7)  Email notifications
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(8)  Experts
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(9)  Individuals
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(10)  Active Admin
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(11)  Translations
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(12)  Search
	Click Element  link=Organizations
	Page Should Contain Element  css=label  Filter by:
	#undefined  undefined  undefined
	Page Should Contain Element  css=#agency_type  None Corporate Expert Individual
	Page Should Contain Element  css=div.form-group > #name
	Page Should Contain Element  css=button.search-button
	Page Should Contain Element  xpath=(//button[@type='button'])[2]
	Page Should Contain Element  css=.btn.btn-default.dropdown-toggle>i.icon-align-justify
	Page Should Contain Element  css=ul.dropdown-menu.dropdown-menu-right > li > a  Display alphabetically
	Page Should Contain Element  link=View archived  View archived
	#undefined  undefined  undefined
	Page Should Contain Element  css=img[alt="Add"]:nth(0)
	Page Should Contain Element  css=h2:nth(0)  Individual
	Page Should Contain Element  css=strong.heading  logo
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[2]/strong  organization name
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[3]/strong  actions
	Page Should Contain Element  css=img[alt="Add"]:nth(1)
	Page Should Contain Element  css=h2:contains('Expert')  Expert
	Page Should Contain Element  css=img[alt="Add"]:nth(2)
	Page Should Contain Element  css=h2:contains('Corporate')  Corporate
	Page Should Contain Element  link=Privacy Policy  Privacy Policy
	Page Should Contain Element  link=Terms of Service  Terms of Service
	#selectAndWait  css=#agency_type  Expert
	Page Should Contain Element  css=img[alt="Add"]
	Page Should Contain Element  css=h2  Expert
	Page Should Contain Element  css=strong.heading  logo
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[2]/strong  organization name
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[3]/strong  actions
	Page Should Contain Element  css=img.attachment_thumb
	Page Should Contain Element  css=h3
	Page Should Contain Element  css=.btn.btn-default>i.icon-cog
	Page Should Contain Element  link=More Info  More Info
	Page Should Contain Element  link=Login History  Login History
	Page Should Contain Element  link=Usage Report  Usage Report
	Page Should Contain Element  link=Archive  Archive
	#undefined  undefined  undefined
	#storeElementPresent  link=Copy Lisa Clark data  lisaExpert
	#undefined  undefined  undefined
	Log  ${lisaExpert}
	#undefined  undefined  undefined
	#gotoIf  ${lisaExpert}==true  positiveExpert
	#undefined  undefined  undefined
	#gotolabel  negativeExpert  
	#undefined  undefined  undefined
	#label  positiveExpert  
	Page Should Contain Element  link=Copy Lisa Clark data  Copy Lisa Clark data
	#gotolabel  continueExpert  
	#label  negativeExpert  
	Click Element  css=a.pill_inverse
	Page Should Contain Element  css=.h4.agency_patient_name>a  Lisa Clark
	Click Element  css=a[title="Organizations"]
	#selectAndWait  xpath=html/body/div[2]/div/div/div/section/article/div[1]/div[2]/form/select  Expert
	#label  continueExpert  
	#selectAndWait  css=#agency_type  Corporate
	Page Should Contain Element  css=img[alt="Add"]
	Page Should Contain Element  css=h2  Corporate
	Page Should Contain Element  css=strong.heading  logo
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[2]/strong  organization name
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[3]/strong  actions
	Page Should Contain Element  css=img.attachment_thumb
	Page Should Contain Element  css=h3
	Page Should Contain Element  link=More Info  More Info
	Page Should Contain Element  link=Login History  Login History
	Page Should Contain Element  link=Usage Report  Usage Report
	Page Should Contain Element  link=Archive  Archive
	#undefined  undefined  undefined
	#storeElementPresent  link=Copy Lisa Clark data  lisaCorp
	#undefined  undefined  undefined
	Log  ${lisaCorp}
	#undefined  undefined  undefined
	#gotoIf  ${lisaCorp}==true  positiveCorp
	#undefined  undefined  undefined
	#gotolabel  negativeCorp  
	#undefined  undefined  undefined
	#label  positiveCorp  
	Page Should Contain Element  link=Copy Lisa Clark data  Copy Lisa Clark data
	#gotolabel  continueCorp  
	#label  negativeCorp  
	Click Element  css=a.pill_inverse
	Page Should Contain Element  css=.h4.agency_patient_name>a  Lisa Clark
	Click Element  css=a[title="Organizations"]
	#selectAndWait  xpath=html/body/div[2]/div/div/div/section/article/div[1]/div[2]/form/select  Corporate
	#label  continueCorp  
	Page Should Contain Element  link=Copy Lisa Clark data  Copy Lisa Clark data
	#selectAndWait  css=#agency_type  Individual
	Page Should Contain Element  css=img[alt="Add"]
	Page Should Contain Element  css=h2  Individual
	Page Should Contain Element  css=strong.heading  logo
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[2]/strong  organization name
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[3]/strong  actions
	Page Should Contain Element  css=img.attachment_thumb
	Page Should Contain Element  css=h3
	Page Should Contain Element  link=More Info  More Info
	Page Should Contain Element  link=Login History  Login History
	Page Should Contain Element  link=Usage Report  Usage Report
	Page Should Contain Element  link=Archive  Archive
	#undefined  undefined  undefined
	#storeElementPresent  link=Copy Lisa Clark data  lisaInd
	#undefined  undefined  undefined
	Log  ${lisaInd}
	#undefined  undefined  undefined
	#gotoIf  ${lisaInd}==true  positiveInd
	#undefined  undefined  undefined
	#gotolabel  negativeInd  
	#undefined  undefined  undefined
	#label  positiveInd  
	Page Should Contain Element  link=Copy Lisa Clark data  Copy Lisa Clark data
	#gotolabel  continueInd  
	#label  negativeInd  
	Click Element  css=a.pill_inverse
	Page Should Contain Element  css=.h4.agency_patient_name>a  Lisa Clark
	Click Element  css=a[title="Organizations"]
	#selectAndWait  xpath=html/body/div[2]/div/div/div/section/article/div[1]/div[2]/form/select  Individual
	#label  continueInd  
	Page Should Contain Element  link=Copy Lisa Clark data  Copy Lisa Clark data
	Input Text  css=div.form-group > #name  miramar
	Click Element  css=.search-button.btn-submit
	Page Should Contain Element  css=img[alt="Add"]
	Page Should Contain Element  css=h2  Individual
	Page Should Contain Element  css=strong.heading  logo
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[2]/strong  organization name
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[3]/strong  actions
	Page Should Contain Element  css=img.attachment_thumb
	Page Should Contain Element  css=h3  Miramar Health Center
	Page Should Contain Element  link=More Info  More Info
	Page Should Contain Element  link=Login History  Login History
	Page Should Contain Element  link=Usage Report  Usage Report
	Page Should Contain Element  link=Archive  Archive
	Click Element  css=.active>a:nth(1)
	Click Element  xpath=(//button[@type='button'])[3]
	Click Element  css=ul.dropdown-menu.dropdown-menu-right > li > a
	Page Should Contain Element  css=img[alt="Add"]
	Page Should Contain Element  css=h2  organizations
	Page Should Contain Element  css=div.letter.text-center  A
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div[2]/div  B
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div[3]/div  C
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div[5]/div/div  M
	Page Should Contain Element  link=Miramar Health Center  Miramar Health Center
	Click Element  xpath=(//button[@type='button'])[3]
	Click Element  css=ul.dropdown-menu.dropdown-menu-right > li > a
	Click Element  xpath=(//button[@type='button'])[3]
	Click Element  link=View archived
	Page Should Contain Element  css=img[alt="Add"]
	Page Should Contain Element  css=h2
	Page Should Contain Element  css=strong.heading  logo
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[2]/strong  organization name
	Page Should Contain Element  //div[@id='main']/div/div/section/article/div[3]/div/div/div/div/div[3]/strong  actions
	Page Should Contain Element  css=img.attachment_thumb
	Page Should Contain Element  css=h3
	Page Should Contain Element  link=More Info  More Info
	Page Should Contain Element  link=Login History  Login History
	Page Should Contain Element  link=Usage Report  Usage Report
	Page Should Contain Element  link=Unarchive  Unarchive
	Page Should Contain Element  link=Copy Lisa Clark data  Copy Lisa Clark data
	Click Element  xpath=(//button[@type='button'])[3]
	Click Element  link=Not archived
	Page Should Contain Element  css=.nav.nav-tabs>li>a:nth(2)  Organizations