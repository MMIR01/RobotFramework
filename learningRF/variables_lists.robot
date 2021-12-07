*** Settings ***
Documentation    How to use lists as a variable
Library    Collections

*** Variables ***
@{LIST_GLOBAL}    one    two    three
${max_users}    4

*** Test Cases ***
Test1
    [Documentation]    Creating a list with @
    @{list1} =    Create List    val1    val2    val3
    #With $ we are passing the listname, with @ the content
    Append to list    ${list1}    val4
    Log    Printing list
    Log Many    @{list1}
    #Another way to print a list
    Log List    ${list1}
    
Test2
    [Documentation]    Creating a list with $
    #A list can also be created with $
    #It looks like it creates a list of unicode strings
    ${list2} =    Create List    val11    val22    val33
    Append to list    ${list2}    val44
    Log    Printing list
    Log Many    @{list2}
    Log List    ${list2}
    
Test3
    [Documentation]    Use a list created as a global variable
    Log    Printing list
    Log List    ${LIST_GLOBAL}

Test 4
    [Documentation]    Checking scope for list variables
    ...    We are creating a suite variable in this test
    @{usernames}    Create_List
    FOR    ${index}    IN RANGE    ${max_users}
        ${username}     Set_Variable    user_${index}
        Append_to_list    ${usernames}    ${username}
    END
    Log List    ${usernames}
    Set Suite Variable    @{usernames_global}    @{usernames}
    
Test 5
    [Documentation]    Checking scope for list variables
    ...    The suite variable is defined in Test 4, and printed here
    Log List    ${usernames_global}
    