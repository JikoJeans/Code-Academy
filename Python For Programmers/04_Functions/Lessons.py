#Lesson One:       Function Basics
    # Function Declaration
        # Decalaring a function begins with a def keyword which Python uses
        #  to declare functions. The next value is the function name and following
        #  clause () contains the aguments for the function. The final built-in 
        #  keyword is return which exits the function and returns the value passe in.
        #  A function declarations example would follow the standard syntax below:
def function_name(argument1, argument2, argument3):
    sum = argument1 + argument2 + argument3
    return sum

    # Using Functions
        # The function can be called by utilizing the function name and passing
        #  in the appropriate arguments for the function like seen below:
final_sum = function_name(1, 2, 3)  #  stores 6 within final_sum

    # Parameters
        # Functions can be built to include parameters similar to the funcion above
        #  but it is important to remember that Python is neither 'Pass by Reference'
        #  nor 'Pass by Value' but instead is considered 'Pass by Object Reference'.
        #  This allows for functions to pass immutable objects by value and mutable
        #  objects pass by reference like in the example below:
def call_by_value(x): 
    x = x + 2  #  only occures locally
    return
def call_by_reference(list): 
    list.append('D')  #  occurs on the actual list
    return

    # Arguments
        # Argumets are values that can be passed into the function and used as the
        #  the parameters. If we wanted to call one of the functions we would do
        #  the following syntax:
char_list = ['A', 'B', 'C']
call_by_reference(char_list)
print(char_list)  #  Outputs ['A', 'B', 'C', 'D']

#Lesson Two:       Recursion
#Lesson Three:     Lambda Functions