*** Settings ***
Documentation    This is a resource file to be used in other tests

*** Variables ***
${var_from_resource}    This is a variable from a resource file

*** Keywords ***
Keyword From Resource
    [Documentation]    My Keyword from a resource file
    Log    This is keyword imported from a resource file    