#Lesson One:       Classes and Objects
    # Classes
        # A class is a data type that encapsulates information and is used to
        #  instantiate objects. The syntax for declaring a class is as follows
        #  With the 'class' keyword:
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
    # Public Access Modifiers
        # By default, all members within a class are public, and as a result there
        #  is no need to specify the access modifier for public members. Being public
        #  allows for access outside of the class declaration in another part of the
        #  program.
class PublicClass:
        def __init__(self, input1, input2):
            self.storage1 = input1
            self.storage2 = input2
        def display_storage(self):
            print(f'self contains: {self.storage1} and {self.storage2}')
temp_var = PublicClass('Hi', 'There')
temp_var.display_storage()  #  Would output 'self contains: Hi and There'
print(f'self contains: {temp_var.storage1} and {temp_var.storage2}')
    # Also would output 'self contains: Hi and There' through public access.

    # Protected Access Modifiers
        # Protected access modifiers are denoted with a '_' as the prefix to the
        #  variable name. This prevents the member form being accessed unless
        #  it is done from the subclass. The above class can be updated to:
class ProtectedClass:
        def __init__(self, input1, input2):
            self._storage1 = input1
            self._storage2 = input2
        def display_storage(self):
            print(f'self contains: {self._storage1} and {self._storage2}')

temp_var = PublicClass('Hi', 'There')
temp_var.display_storage()  #  Would output 'self contains: Hi and There'
# print(f'self contains: {temp_var._storage1} and {temp_var._storage2}')
    # No longer works and would cause an error.

    # Private Access Modifiers
        # Private access modifiers are denoted with '__' which is one more
        #  undercore than the protected access modifier. Members will be marked
        #  private and any attempt to access these members outsite of the class
        #  Will cause an Attribute Error message.
class PrivateClass:
        def __init__(self, input1, input2):
            self.__storage1 = input1
            self.__storage2 = input2
        def display_storage(self):
            print(f'self contains: {self.__storage1} and {self.__storage2}')

temp_var = PrivateClass('Hi', 'There')
temp_var.display_storage()  #  Would output 'self contains: Hi and There'
# print(f'self contains: {temp_var.__storage1} and {temp_var.__storage2}')
    # Attribute Error message.

#Lesson Four:      Encapsulation
    # Class Variables
        # A class can contain variables that can only be accesed by an object
        #  of the class. The example below is
class TempClass:
        def __init__(self, input1, input2):
            self.storage1 = input1
            self.storage2 = input2
        def display_storage(self):
            print(f'self contains: {self.storage1} and {self.storage2}')
temp_var = TempClass('Hi', 'There')
temp_var.display_storage()  #  Would output 'self contains: Hi and There'
print(f'self contains: {temp_var.storage1} and {temp_var.storage2}')
# Would repeat the output by accessing the variables manually

    # Class Methods
        # A class can also contain methods that can be accessed by objects of
        #  the class. In the above example display_storage() is a class method
        #  that is referenced outside of the class declaration.

#Lesson Five:      Inheritance
    # Parent Class
        # The parent class, also known as the base class, is the class whose
        #  methods and properties transfer over to the child class. An example
        #  can be seen above with TempClass.

    # Child Class
        # The child class, also known as the derived class, is the class that
        #  inherets methods and properties from the parent class. The child class
        #  must contain the following to be considered a child class:
            # 1) The name of the parent class in the definition of the child class.
            # 2) The constructor of the parent class called within the constuctor
            #  of the child class.
        # The example below displays FinalClass inheriting from TempClass
class FinalClass(TempClass):
     def __init__(self, input1, input2, input3):
        self.slot1 = input1
        TempClass.__init__(self, input2, input3)

new_var = FinalClass('Hi', 'Hows', 'It going')
new_var.display_storage() # Returns 'self contains: Hows it going'
print(f"self contains: {new_var.slot1} {new_var.storage1} {new_var.storage2}")
    # Returns 'self contains: Hi Hows it going'

#Lesson Six:       Polymorphism
    # Polymorphism with Classes
        # Polymorphism is the concept of classes sharing methods with the same
        #  name. In Python, classes are allowed to contain methods that share
        #  the same name as another method from a different class. An example
        #  can be found below with the example of shorts and pants
class Shirt():
    def type(self):
        print('This is a shirt')
    def cost(self):
        print('This shirt cost $10 USD')

class Pants():
    def type(self):
        print('This is a pair of pants')
    def cost(self):
        print('The pants cost $5 USD')

clothing_a = Shirt()
clothing_b = Pants()
for clothing_item in (clothing_a, clothing_b):
    clothing_item.type()
    clothing_item.cost()
    # would output:
    #  This is a shirt
    #  This shirt cost $10 USD
    #  This is a pair of pants
    #  The pants cost $5 USD