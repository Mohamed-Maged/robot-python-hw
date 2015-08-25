__author__ = 'Mohamed_Maged'

*** Settings ***
Documentation    Suite descriptio
Library  UserLib
Library  UserApiLib/UserApiLibClass.py
Library  Selenium2Library

*** Variables ***

#Inputs
${Username}          usertest
${ValidPassword}           usertestPASS
${Browser}            Firefox
${SiteUrl}            localhost:18080/cmp/login
${TimeOut}            60s

#XPATH:
#----Login
${UserLoginName}             id=j_username
${UserLoginPassword}         name=j_password
${LoginButton}               xpath=//button[@type='submit']
${DashboardTab}              id=Dtab
${UserOptionsIcon}           xpath=//div[@id='GButtonUserMenu']
${LoginFailed}               xpath=//font[text()='Incorrect login or password.']
*** Test Cases ***

TC2_Deleted_user_cannot_login
    ${user}=    user object     ${Username}    ${ValidPassword}       usertest      usertest    usertest@usertest.com
    Log to console  ${user}
    ${id}=  create user    qaserver10     18081        admin         admin         ${user}
    delete user     qaserver10     18081        admin         admin         ${id}
    ${Status}=  Login To CMP
    Log to console  ${Status}
    Run Keyword If  '${Status}'=='FAIL'     Login Failed




*** Keywords ***
#user object  login, password, firstName, lastName, email
#create user  host, port, username, password, user
#delete user   host, port, username, password, userId)

Login To CMP
    Open Browser to the Login Page
    Enter User Name
    Enter Password
    Click Login
    Check user logged in

Open Browser to the Login Page
    open browser    ${SiteUrl}               ${Browser}
    Maximize Browser Window

Enter User Name
    Input Text      ${UserLoginName}         ${Username}

Enter Password
    Input Text      ${UserLoginPassword}     ${ValidPassword}

Click Login
    click button    ${LoginButton}

Check user logged in
    wait until page contains element         ${UserOptionsIcon}         ${TimeOut}
    page should contain element              ${DashboardTab}

Login Failed
    Page should contain element             ${LoginFailed}
