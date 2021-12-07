*** Settings ***
Documentation    In this test we are going to see the different scopes for a variable    
  
Suite Setup    MySuiteSetup

*** Variables ***
${VAR_GLOBAL}    Global variable from variable section

*** Test Cases ***
Test1
    
    Log    Test level
    Log    Global variables can be seen here
    Log    Value: ${VAR_GLOBAL}
    Log    Suite variables can be seen here
    Log    Value: ${var_global_suite}

    ${local_variable_test} =    Set Variable    I am a local variable
    Set Test Variable    ${variable_test}    I am a test variable
    Log    Printing the local variable: ${local_variable_test}
    Log    Printing the test variable: ${variable_test}
    
    MyPrintingKeyword
    
    Log    A local variable defined by a keyword cannot be seen here
    Run Keyword And Continue On Failure    Log    Value: ${var_local_key}
    Log    A test variable defined by a keyword can be seen here
    Log    Value: ${var_test_key}
    Log    A suite variable defined by a keyword can be seen here
    Log    Value: ${var_suite_key}
    
Test2
    
    Log    Test level
    Log    Global variables can be seen here
    Log    Value: ${VAR_GLOBAL}
    Log    Value: ${var_global_suite}

    Set Test Variable    ${variable_test_2}    I am a test variable 2
    
    MyPrintingKeyword   
    
Test 3
    Log    Test level
    Log    Suite variable defined by the keyword can be seen here (since the keyword has been previously executed)
    Log    Value: ${var_suite_key}
    Log    Test variable defined by the keyword cannot be seen here (since it is restricted to the test scope, and the keyword has not been executed yet during this test)
    Run Keyword And Continue On Failure    Log    Value: ${var_test_key} 
    

*** Keywords ***

MySuiteSetup  
    [Documentation]    Makes a variable available everywhere within the scope of the current suite
    ...    Setting variables with this keyword thus has the same effect as creating them using the Variable table in the test data file or importing them from variable files.
    
    Log    Setting global variable from suite setup
    Set Suite Variable    ${var_global_suite}    Global variable from suite
    

MyPrintingKeyword
    Log    Keyword level
    
    Log    Local variable defining a test level cannot be seen here
    Run Keyword And Continue On Failure    Log    Value:  ${local_variable_test}  
    Log    Local variable defining a test level with Set Test Variable can be seen here (only if called by Test1)
    Run Keyword And Continue On Failure    Log    Value: ${variable_test}
    Log    Local variable defining a test level with Set Test Variable can be seen here (only if called by Test2)
    Run Keyword And Continue On Failure    Log    Value: ${variable_test_2}  
    
    Log    Global variables can be seen here
    Log    Value: ${VAR_GLOBAL}
    Log    Value: ${var_global_suite}
    
    Log    Defining variables inside a keyword
    ${var_local_key} =    Set Variable    I am a local keyword variable
    Set Test Variable    ${var_test_key}    I am a test variable defined by a keyword
    Set Suite Variable    ${var_suite_key}    I am a suite variable defined by a keyword
    
    Log    End of the keyword