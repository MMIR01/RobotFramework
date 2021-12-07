*** Settings ***
Documentation    This suite contains an example of how to embed arguments into the keyword name

*** Variables ***
${VAR1}    default_val

*** Test Cases ***
Test1
    Select item1 from list
    Select item2 from list
    
       
*** Keywords ***
    [Documentation]    Notice also that embedded arguments only work with user keywords 
Select ${item} from list
    Log    ${item} selected
    