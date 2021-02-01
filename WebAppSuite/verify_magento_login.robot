*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1_ValidationCredential
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    browserName=chrome
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}driver${/}chromedriver.exe
    Go To Url    url=https://magento.com/
    Set Appium Timeout    30
    Click Element    //button[contains(@class,'nav-menu-button js-menu-button visible-xs visible-sm')]
    Wait Until Element Is Visible    //span[contains(text(),'My Account')]      
    Click Element    //span[contains(text(),'My Account')]
    Wait Until Page Contains Element        //input[@id='email']  
    Input Text    //input[@id='email']    balaji0017@gmail.com 
    Input Password    //input[@id='pass']    welcome@12345 
    Click Element     //button[@id='send2'] 
    Wait Until Page Contains   Log Out     
    Page Should Contain Text   Log Out
    Close Application    
    
    