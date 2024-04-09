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
    # What Is A Recursive Function
        # A recursive function contains 2 parts: a recursive step and a base case
        # that are utilized before the function calls itself. In the function below
        # we can see an example of this with the factorial function:
def factorial(num):
    if num == 1:
        return 1
    else:
        return num * factorial(num-1)
    
    # Recursive Step
        # The recursive step refers to the step that calls the function that is
        #  already being executed. In this example the recursive step is the
        #  line of code under the else statement.

    # Base Case
        # Each recursive problem should have a base case to help avoid infinite
        #  recursion. In the example above the base case occurs when the condition
        #  num == 1 is true and returns 1 as a result. Without this base case the
        #  function would continue after factorial(1) onto factorial(0) then
        #  factorial(-1) and so on infinitely.
    
    # How It Works
        # The factorial function can be visualized with the steps below
factorial(3)
        # Upon 3 as the input the function would run as follows
        # step 1: The recursive step occurs returning 3 * factorial(3 - 1)
        # step 2: The recursive step occurs again returning 2 * factorial(2 - 1)
        # step 3: We reach the base case and return 1. Step 2 would then return
        # 2 * 1 which would propagate up to step 1 which would return the final
        # value of 6 for 3 factorial.

    # Why use Recursion?
        # It produces clear code, reducing the need to repeat code.
        # It can be used for advance data structures problems.
        # It splits a complex task into smaller task and can be efficient
        #  in doing so, notice merge sort can achieve O(nlogn) sorting time.
        
#Lesson Three:     Lambda Functions
    # Lamnda Function Syntax
        # A lambda function in Python is a simple anonymous function that does not
        #  use the def keyword to declare it. The lambda function can have multiple
        #  arguments but only one expression and it can be contained in one line
        #  of code as seen below:
double_it = lambda x: x + x
        # We can then call the function using double_it(). This is considered
        # anonymous because it is not defined with the def keyword.
value = double_it(2)  #  would then assign 4 to value

    # Why Use Lamda Functions?
        # Lambda functions are typically used for the following scenerios:
            # When we want to write a quick function and minize the program size.
            # When we want to combine it with other built-in functions such
            #  as map(), filter(), and apply() to filter for data.