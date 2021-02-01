*** Settings ***
Library    AppiumLibrary    
Library    Process

*** Test Cases ***
TC1_InValidationCredential
    Start Process    appium    
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
    Set Appium Timeout    30s
    Click Element    //*[@text='Profile']
    Wait Until Page Contains Element    //*[contains(@text,'Sign in')]        
    Click Element    //*[@text='Sign in']
    Wait Until Page Contains Element    //*[contains(@text,'Enter an e-mail address or username')]           
    Input Text    //*[contains(@text,'Enter an e-mail address or username')]    amina234@gmail.com
    Input Text    //*[@content-desc='Password']    1234
    Click Element    xpath=(//*[@text='Sign in'])[2]
    Wait Until Page Contains Element         //*[contains(@text,'Invalid')]    
     ${text}   Get Text     //*[contains(@text,'Invalid')] 
     Log To Console        ${text}
     
    Wait Until Page Contains    Invalid password 
    Page Should Contain Text    Invalid password 
    
TC11_InValidationCredential
           
    Start Process    appium     -p    4723    shell=True    alias=appiumserver
    ...     stdout=${CURDIR}/appium_stdout.txt    stderr=${CURDIR}/appium_stderr.txt   
    
      Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
    Set Appium Timeout    30
    Click Element    //*[@text='Profile'] 
    Wait Until Page Contains Element        //*[contains(@text,'Sign up with email')]
    Click Element    //*[contains(@text,'Sign up with email')] 
    Wait Until Page Contains Element         //*[contains(@text,'First')]   
    Input Text    //*[contains(@text,'First')]    ami
    Click Element    //*[contains(@text,'Birth')]
    
    sleep    2s
    ${date}    Set Variable    28
    FOR    ${i}    IN RANGE    0    999
        Click Element    //*[@resourse-id='android:id/numberpicker_input']
        Clear Text    //*[@resourse-id='android:id/numberpicker_input']
        Input Text    //*[@resourse-id='android:id/numberpicker_input']    27
        
        ${text}    Get Text       //*[@resourse-id='android:id/numberpicker_input'] 
        Exit For Loop If     '${text}'=='27' 
    END
    Click Element    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[2]
    sleep    2s
    Clear Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[2]    Aug
    Click Element    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[3]
    Sleep    2s    
    Click Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[3]    
    Input Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[3]    1992
    Click Element    //*[@text='OK']
    Close All Applications
    Terminate Process    
    
TC11_InValidationCredentials
      Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
    Set Appium Timeout    30s
    Sleep    5s   
    FOR    ${i}    IN RANGE    0    999    
      ${output}     Run Keyword And Ignore Error        Click Element    //*[contains(@text,'Arts')]
      Swipe By Percent    50   75    50    25 
      Exit For Loop If    '${output}[0]'=='PASS'
    END 
   





