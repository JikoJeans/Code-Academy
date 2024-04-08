#Lesson One:       Program Structure
    #Hello World
        # The notorous hello world program can be written in Python as follows:
print('Hello World!')
    #The main() Function
def main():
    print('Hello World!')
        # The main function defines the starting point of the program and including
        #  main() allows us to import and run the program in other scripts.
if __name__ == '__main__':
    main()
        # The if statement checks whether the program is being run independently as
        #  the primary module or as a library in another script.
    #Examples
def main():
    print('New World!')
    newFunction()

def newFunction():
    print('Second Output')

if __name__ == '__main__':
    main()
    
#Lesson Two:       Comments
    # What are comments?
        #Comments refer to the portion of code that is not executed and whose sole
        # purpose is to document.
    # Inline Comments
        # Inline refers to comments that are located on the same line as the code:
print('Example')  #  Inline comment example
    # Block Comments
        # Unlike other languages, Python does not have a unique symbol to denote
        #  block comments. Instead each comment must start with the # symbol

#Lesson Three:     Input and Output
    # Input
        # Python utilizes a built in function called input() that takes in the
        #  user's input. In the following example we can take an input and store
        #  it as follows:
example_variable = input('What would you like to store?')
    # Output
        # Similar as to above, we will utilize the built in print() statement
        #  for handling outputs. The output can either be a string or have variables
        #  mixed in. Variables can be added using commas or string concatenation if
        #  the variable is a string.
print('Initial Message')
print('Message with 1 ', example_variable, '!')
print('Message', example_variable, 'with multiple variables ', example_variable)
print('Message with 1 '+ example_variable)
print('Message' + example_variable, 'with multiple variables ' + example_variable)
    # Formatted String Literals
        # Formatted string literals can be used by starting the print argument with
        #  f and inserting a Python expression between { and }.
print(f'Message with 1 {example_variable}!')
print(f'Message with function {newFunction}!')
    #str.format()
        # Python also utilizes a built in function called str.format() that can be
        #  used in with the print() function
print('Message with 1 {}!'.format(example_variable))

#Lesson Four:      Variables
    # Declaring Variables
        # The declaration of variables can be done with the following syntax
var = 'New Variable!'
        # Similarly reasigning a variable is done with the same syntax
var = 'New Value Same Variable!'
        # Notice there is no need to declare data types so we can simply declare
        #  the following variables to get an integer and float.
integer_variable = 144
float_variable = 96.3
    # Casting
        # Similar to other languages casting can be done using the constructor
        #  functions like str(), int(), float(), bool(), etc.
integer_to_string = str(144)
integer_to_string = str(integer_variable)
float_to_integer = int(96.3)
float_to_integer = int(float_variable)
    # Printing the Data Type of a Variable
        # In order to output the data type of a variable we utilize the built-in
        #  type() function
type(integer_to_string)  #  prints str
type(float_to_integer)  #  prints int

#Lesson Five:      Basic Data Types
    # Integer
        # 'int's store integer values that can be assigned by using a whole number
        #  or with the int() constructor.
first_integer = 30
second_integer = int(96.3)
    # Float
        # 'float's store floating point numbers which refer to rational numbers
        #  with a decimal value. Again we can declare the value with a rational
        #  number with a decimal value or with the float() constructor.
first_float = 96.3
second_float = float(96.3)
    # Boolean
        # 'bool's store either a true or false value. We can use either the
        #   keywords True or False or we can assign it using the bool() constructor.
        #   The bool() function will always return True unless the variable is
        #   empty, 0, None, or False.
first_boolean = True
second_boolean = bool('False')
    # String
        # 'string' variables hold characters and can be created with either single
        #  qoutes '' or double doutes "". They can also be created with the
        #  built-in str() to specify that a string should be stored.
first_string = 'test string'
second_string = "next string"
third_string = str(96.3)

#Lesson Six:       Operators