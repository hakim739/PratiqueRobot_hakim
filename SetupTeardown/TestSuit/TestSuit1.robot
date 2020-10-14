*** Settings ***
Library    SeleniumLibrary 
Resource    ../Ressources/Ressource1.robot   
    
Test Setup    start browser and maximaze
Test Teardown    get page title and close browser     


*** Test Cases ***
TC-001
   
   Input Text    id=txtUsername    Admin 
   Input Password    id=txtPassword    admin123  
   Click Button    id=btnLogin         



TC-002
  
  Input Text    id=txtUsername    Admin 
  Input Password    id=txtPassword    admin123  
  Click Button    id=btnLogin
  Page Should Contain    Dashboard    
    