*** Settings ***
Documentation     In this test we are going to learn more about variables

*** Test Cases ***
  
1_Variables
    [Documentation]    Example 1. How to create a manage variables
    #It doesn't work, it is not the way to declare a variable in RF
    #That sintax only works to create variables from a returned value after a keyword execution
    #${var1} = 'zero'
    #See example 2 for that
    
    ${hi1} =    Set Variable    Hi
    # The '=' is optional
    ${hi2}    Set Variable    World!
    ${hi3} =    Set Variable    People!
    Log    ${hi1} ${hi2}
    Log    ${hi1} ${hi3}
  
2_Variables
    [Documentation]    Example 2. Creating a variable from returned value
    ${var1}    MyKeyword
    Log    Value returned: ${var1}
    
*** Keywords ***
MyKeyword
    ${var_from_kw}    Set Variable    keyword variable    
    [Return]    ${var_from_kw}