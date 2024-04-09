#Lesson One:       Classes and Objects
    # Classes
        # A class is a data type that encapsulates information and is used to
        #  instantiate objects. The syntax for declaring a class is as follows
        #  with the 'class' keyword:
class ClassName:
    pass  #  placeholder that does nothing making an empty class

    # Objects
        # An object can be instantiated from a class by using the class constructor
        # as seen below:
temp_variable = ClassName()  #  Creates a class_name object

#Lesson Two:       Construction and Destructors
    # Constructors
        # Constructors are special functions that are executed when an object
        #  is instantiated. For Python, the __init__ is the keyword used to declare
        #  a class constructor but it is important to note that in python only the
        #  last constuctor declared will be called and as a result does not support
        #  inherently multiple constructors for one class.
    
    # init()
        # It is best practice to include an __init__() method as the constructor
        #  and below contains an example of a class with one:
class CustomClasses:
    def __init__(self, choosen_class):
        self.choice = choosen_class
    
    # Instance Variables
        # The self parameter in the __init__() method refers to the current instance
        #  and can be used to assign variables in the constructor as seen above with
        #  the choice variable.

    # Destructors
        # Destructors are called when an object gets deleted. In Python, the
        #  function is decalared with __del__ keyword.

    # del()
        # When declaring the desctructor it should be paired with the self argument
        # as seen below:
class CustomLoadout:
    def __init__(self, choosen_loadout):
        self.choice = choosen_loadout
    def __del__(self):
        print(self.choice, ' - has been deleted')

new_variable = CustomLoadout('Runner')
del new_variable  #  Outputs: Runner - has been deleted

#Lesson Three:     Access Modifications
#Lesson Four:      Encapsulation
#Lesson Five:      Inheritance
#Lesson Six:       Polymorphism