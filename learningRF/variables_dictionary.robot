*** Settings ***
Documentation    How to use dictionaries as a variable
Library    Collections

*** Variables ***
&{DICT_GLOBAL}    key1=val1    key2=val2    key3=val3    

*** Test Cases ***
Test1
    [Documentation]    Creating a dictionary with &
    &{dict1} =    Create Dictionary    k1=v1    k2=v2
    #Next line will fail: TypeError: Expected argument 1 to be a dictionary or dictionary-like, got string instead.
    #Set To Dictionary    @{dict1}    k3    v3
    #So we cant use @, so $ has to be used instead
    Set To Dictionary    ${dict1}    k3    v3
    Set To Dictionary    ${dict1}    k4=v4
    Log    Printing dictionary
    Log Dictionary    ${dict1}
    
Test2
    [Documentation]    Creating a dictionary with $
    ${dict2} =    Create Dictionary    k1=v1    k2=v2
    #With $ we are passing the listname, with & the content
    Set To Dictionary    ${dict2}    k3    v3
    Log    Printing dictionary
    Log Dictionary    ${dict2}
    
Test3
    [Documentation]    Use a dict created as a global variable
    Log    Printing dictionary
    Log Dictionary   ${DICT_GLOBAL}

Test4
    [Documentation]    Loop inside a dictionary to print the keys
    # @ is used for list, so keys keyword is returning a list that will be used to iterate
    FOR    ${item}    IN    @{DICT_GLOBAL.keys()}
       Log    ${item}         
    END
    
Test 5
    [Documentation]    Loop inside a dictionary to print keys and values
    # @ is used for list
    FOR    ${key_value}    IN    @{DICT_GLOBAL.items()}
            ${key}=  set variable  ${key_value}[0]
            ${value}=  set variable  ${key_value}[1]
            log  Key: ${key}; Value: ${value}
    END
