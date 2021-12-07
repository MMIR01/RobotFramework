'''
File with a variable to be used from a Robot file

More info here:
https://github.com/robotframework/robotframework/blob/master/doc/userguide/src/CreatingTestData/ResourceAndVariableFiles.rst

@author: mmir01
'''


def get_value():
    value = "Internal value"
    return value

# Due to all here is treated as a variable by RF, this should works
VAL1 = get_value()