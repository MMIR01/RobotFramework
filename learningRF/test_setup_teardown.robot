*** Settings ***
Documentation    During this example we are going to see:    
...    Test setup: instructions executed before the test is run    
...    Test teardown: instructions executed at the end of the test, even if the test fails
...    Keyword teardown: instructions executed at the end of a call to a keyword. Keywords
...    can have teardown but not setup
Test Setup    Setup1
Test Teardown    Teardown1

*** Test Cases ***
Test1
    [Documentation]    Setup and teardown are executing
    Log    Executing test1
    
Test2
    [Documentation]    Only setup is executing
    Log    Executing test2
    [Teardown]    NONE

Test3
    [Documentation]    Only teardown is executing
    [Setup]    NONE
    Log    Executing test3
    
Test4
    [Documentation]    Neither setup nor teardown is executed
    [Setup]    NONE
    Log    Executing test4
    [Teardown]    NONE

Test 5
    [Documentation]    Overridden setup
    [Setup]    Setup2
    Log    Executing test5

Test 6
    [Documentation]    Executing a keyword with teardown
    MyKeyword

Test 7
    [Documentation]    Increasing setup
    [Setup]    Run Keywords    Setup1    Setup2
    Log    Executing test5

*** Keywords ***
Setup1
    Log    Executing test setup1

Setup2
    Log    Executing test setup2 (overridden)

Teardown1
    Log    Executing test teardown1
    
MyKeyword
    Log    Executing my keyword
    [Teardown]    Log    keyword teardown