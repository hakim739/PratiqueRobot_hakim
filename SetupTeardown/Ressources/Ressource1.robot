*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/index.php/dashboard    
${browser}=    gc

*** Keywords ***
start browser and maximaze
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
get page title and close browser 
   ${title}=    Get Title
   Log To Console    ${title}    
   Close Browser