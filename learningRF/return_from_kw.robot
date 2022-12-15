*** Settings ***
Documentation    During this example we are going to see:    
...    How to return a value from a keyword    
...    Check what happens when there is a teardown in the test

*** Test Cases ***
Test1
    [Documentation]    Execute a kw that returns a value
    ${value}    F1
    Log    Value: ${value}

Test2
    [Documentation]    Execute a kw that returns a value and run a teardown
    ${value}    F2
    Log    Value: ${value}

Test3
    [Documentation]    Execute a kw that returns a value but it also fails
    ${value}    F3
    # Teardown also fails as F3 is None (there is not value returned)
    [Teardown]    Log    ${value}
    

*** Keywords ***
F1
    Log    Executing F1 kw
    [Return]    finished
    
F2
    Log    Executing F2 kw
    [Return]      finished f2
    [Teardown]    Teardown1

F3
    Log    Executing F3 kw
    Fail    "Failing the test"
    [Return]      finished f3
    [Teardown]    Teardown1

Teardown1
    Log    Executing test teardown1
