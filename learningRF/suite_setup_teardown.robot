*** Settings ***
Documentation    During this example we are going to see:    
...    Suite setup: instructions executed before executing all the tests
...    Suite teardown: instructions executed at the end of all tests execution, even if the test fails
...    Test setup: instructions executed before the test is run    
...    Test teardown: instructions executed at the end of the test, even if the test fails

Suite Setup    SuiteSetup
Test Setup    Setup1
Test Teardown    Teardown1
Suite Teardown    SuiteTeardown

*** Test Cases ***
Test1
    [Documentation]    Suite Setup + test setup + test teardown + suite setup are executed
    Log    Executing test1
    

*** Keywords ***
Setup1
    Log    Executing test setup1
    Log To Console    Printing during Test Setup

Teardown1
    Log    Executing test teardown1
    Log To Console    Printing during Test Teardown
    
SuiteSetup
    Log    Executing Suite Setup at the beginning of everything
    Log To Console    Printing during Suite Setup

SuiteTeardown
    Log    Executing the Suite Teardown at the end
    Log To Console    Printing during Suite Teardown
