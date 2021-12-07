*** Settings ***
Documentation     This example shows how to use variables from both a resource and variable file 

Resource    resource_file.robot
Variables    PythonFiles/variables_package/variables_file.py
Variables    PythonFiles/variables_package/variables_file2.py
Variables    PythonFiles/variables_package/variables_file3.py
Variables    PythonFiles/variables_package/variables_file4.py
Variables    PythonFiles/variables_package/variables_file5.py


*** Test Cases ***
Ext_resource
    [Documentation]    Example 1. Variable from a resource file
    ...    We are going to retrieve a variable from a resource file and print the value
    Log    ${var_from_resource}
    
    
Ext_variable
    [Documentation]    Example 2. Variables from a variable file
    ...    We are going to retrieve variables from a variable file and print the value
    Log    Getting variables defined in a python file: 
    Log    ${TEST_VAR}
    Log    ${TEST_VAR2}
    Log    Getting variables defined in a method through a variable in a python file: ${VAL1}

    Log    Getting variables defined inside a method in a python file:
    Log    ${VARIABLE1}
    Log    ${VARIABLE2}
    Log    ${INTEGER} 
    Log    Getting variables defined in a class from a python file:
    Log    ${my_class_variable}
    Log    ${my_class_variable2}
    Log    ${my_class_variable_init}
    Log    Getting variables defined in a class from a python file:
    Log    ${MyCustomVariables.my_custom_variable}
    Log    ${MyCustomVariables.my_custom_variable2}
    Log    ${MyCustomVariables.my_custom_variable_init}