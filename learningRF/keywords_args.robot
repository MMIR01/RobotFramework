*** Settings ***
Documentation    This suite contains simple tests to know how to manage arguments

*** Variables ***
${VAR1}    default_val

*** Test Cases ***
Test1
    [Documentation]    Fixed arguments values
    
    One Argument    ARG1
    Two Arguments    ARG1    ARG2
    
Test2
    [Documentation]    Default arguments values
    Two Arguments With Defaults
    Two Arguments With Defaults    1arg
    Two Arguments With Defaults    1arg    2arg
    Two Arguments With One Default    1arg

Test3
    [Documentation]    Variable number of arguments values
    Any Number Of Arguments    1    2    3    4

Test 4
    [Documentation]    Using named args
    Named args  1    2    3    4    named=10
    Named args2  1    second=2    third=3
    Log    Changing the order of named args
    Named args2  1    third=3    second=2 
       
*** Keywords ***
One Argument
    [Arguments]    ${arg_name}
    Log    Got argument ${arg_name}

Two Arguments
    [Arguments]    ${arg1}    ${arg2}
    Log    1st argument: ${arg1}
    Log    2nd argument: ${arg2}
    
Two Arguments With Defaults
    [Arguments]    ${arg1}=default 1    ${arg2}=${VAR1}
    [Documentation]    This keyword takes 0-2 arguments
    Log    1st argument ${arg1}
    Log    2nd argument ${arg2}
    
Two Arguments With One Default
    [Arguments]    ${arg1}   ${arg2}=default 2
    [Documentation]    This keyword takes 2 arguments
    Log    1st argument ${arg1}
    Log    2nd argument ${arg2}

Any Number Of Arguments
    [Arguments]    @{varargs}
    FOR    ${item}    IN    @{varargs}
        Log    ${item}
    END
    #Alternative
    #Log Many    @{varargs}

Named args
    [Documentation]    It is mandatory to use a named args after variable args
    [Arguments]    @{varargs}    ${named}
    Log Many    @{varargs}    ${named}

Named args2
    [Documentation]    It is mandatory to use a named args after the @
    [Arguments]    ${first}    @{}    ${second}    ${third}
    Log Many    ${first}    ${second}    ${third} 