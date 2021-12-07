'''
File with a method that contains a variable to be used from a Robot file

More info here:
https://github.com/robotframework/robotframework/blob/master/doc/userguide/src/CreatingTestData/ResourceAndVariableFiles.rst

@author: mmir01
'''


def get_variables():
    
    variables = {"VARIABLE1 ": "Variable1",
                 "VARIABLE2 ": "Variable2",
                 "INTEGER": 3}
    return variables
