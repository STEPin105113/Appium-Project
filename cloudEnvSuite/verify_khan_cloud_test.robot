*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_ValidationCredential
     
    Open Application    http://hub-cloud.browserstack.com/wd/hub 
 

    
    ...   browserstack.user=aminasr1
    ...   browserstack.key=FarizAfuFNsqbKLjMyUy
    ...   app=bs://b9b8846ecde651c55e9c3f98e73bf4f0bef9d2fb
    ...   device=OnePlus 6T
    ...   os_version=9.0
    ...   project=First Python project
    ...   build=Python Android
    ...   name=first_test
    Set Appium Timeout    30s
    Click Element    //*[@text='Profile']
    Wait Until Page Contains Element    //*[contains(@text,'Sign in')]        
    Click Element    //*[@text='Sign in']
    Wait Until Page Contains Element    //*[contains(@text,'Enter an e-mail address or username')]           
    Input Text    //*[contains(@text,'Enter an e-mail address or username')]    amina234@gmail.com
    Input Text    //*[@content-desc='Password']    1234
    Click Element    xpath=(//*[@text='Sign in'])[2]