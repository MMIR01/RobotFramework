'''
File with a class which contains variables to be used from a Robot file

More info here:
https://github.com/robotframework/robotframework/blob/master/doc/userguide/src/CreatingTestData/ResourceAndVariableFiles.rst

@author: mmir01
'''

class MyCustomVariables(object):
    '''
    Class that contains variables. 
    The difference with the example 4 is the class name is different from the python file,
    so if my_class_variable_init needs to be printed, it is going to be empty, because 
    it can't be initialized.
    
    Also, to print the rest of variables, we have to use MyCustomVariablesobject.<variable_name>
    '''
    my_custom_variable = 'Variable from a class'
    my_custom_variable2 = 'Variable from a class 2'
    my_custom_variable_init = ''


    def __init__(self):
        '''
        Constructor
        '''
        self.my_custom_variable_init = "Variable defined inside a constructor"