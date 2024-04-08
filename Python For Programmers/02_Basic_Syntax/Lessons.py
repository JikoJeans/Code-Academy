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
#Lesson Five:      Data Types
#Lesson Six:       Operators