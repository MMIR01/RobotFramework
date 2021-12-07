'''
File with a class which contains variables to be used from a Robot file

More info here:
https://github.com/robotframework/robotframework/blob/master/doc/userguide/src/CreatingTestData/ResourceAndVariableFiles.rst

@author: mmir01
'''

class variables_file4(object):
    '''
    Class that contains variables. Following RF documentation:
    Because variable files are always imported using a file system path, 
    creating them as classes has some restrictions:
    -Python classes must have the same name as the module they are located.
    '''
    my_class_variable = 'Variable from a class'
    my_class_variable2 = 'Variable from a class 2'
    my_class_variable_init = ''


    def __init__(self):
        '''
        Constructor
        '''
        self.my_class_variable_init = "Variable defined inside a constructor"
