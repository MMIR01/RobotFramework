*** Settings ***
Documentation    Example about how to use test template

*** Test Cases ***
Normal test case with embedded arguments
    Select item1 from list1
    Select item1 from list2

Template with embedded arguments
    [Template]    Select ${item} from ${list}
    item1    listA
    item2    listB

Template with for loop
    [Template]    MyKeyword ${value}
    FOR    ${index}    IN RANGE    5
        ${index}
    END
    
*** Keywords ***
Select ${item} from ${list}
    Log    Selecting ${item} from ${list}

MyKeyword ${value}
    Log    Value: ${value}