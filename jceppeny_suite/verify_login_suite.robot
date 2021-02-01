*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1_ValidationCredential
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    browserName=chrome
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}driver${/}chromedriver.exe
    Go To Url   https://www.jcpenney.com/
    Set Appium Timeout    30
    Input Text   //input[@id='searchInputId']   Acdc Mens Crew Neck Short Sleeve Music Graphic T-Shirt 
    Click Element    xpath=//button[@data-automation-id ='searchIconBlock']
    Wait Until Page Contains Element         //button[contains(text(),'large')]
    # //*[@data-automation-id="productOptionPillsBlock"]//*[contains(text(),'large')]
    Click Element    //button[contains(text(),'large')]
    # FOR    ${i}    IN RANGE    0    99999
        # ${lists}    Run Keyword And Ignore Error        Click Element    //*[contains(text(),'large')]
        # Execute Script    window.scrollBy(0,100)
        # Log To Console    ${lists}    
        # # Exit For Loop If    ${lists}[0]=='PASS'
    # END
    # ${ele}    Get Webelement    //button[contains(text(),'large')]
    # Execute Script    document.evaluate("//button[contains(text(),'large')]", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click()
    # Execute Script    document.evaluate("//*[contains(text(),'Add To')]", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click()
    
   
    
    # Click Element    //*[contains(text(),'large')]