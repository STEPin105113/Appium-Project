*** Settings ***
Library    AppiumLibrary    


*** Test Cases ***
TC1_ValidationCredential
       
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=windows
    ...    app=C:\\WINDOWS\\system32\\notepad.exe
    Sleep    2s    
    Input Text    //*[@Name='Text Editor']    testing
    Click Element    //*[@Name='File'] 
    Sleep    5s
    Click Element    //*[contains(@Name,'Save As')]  
    Input Text    xpath=(//*[contains(@Name,'File name')])[2]    C:\\test.txt    
    Click Element    //*[@Name='Save']    