#Lesson One:       String Methods
    # Strings in Python
        # In Python, strings are defined with single or double qoutes('' or "")
        #  and can contain a combination of letters, numbers, symbols, and spaces.
    # String Indexing
        # As mentioned above, a string is a combination of letters, numbers,
        #  symbols, and spaces and this list of characters can be accessed by
        #  utilizing brackets with the index we wish to access.
test_string = 'Temperary String'
print(test_string[0])  #  prints T
    # String Slicing
        # Slicing can be applied by using a range of indices to access multiple
        #  characters using an ':' to denote the range. Lets say we want the
        #  first 2 letters of string we could declare that as follows:
start = test_string[0:2]  #  Would contain 'Te'
        # Negative indices can also be applied to grab from the back end
        #  of the string like in the example below:
end = test_string[-3:-1]  #  Would contain 'in'

    # Common Built-In Functions
        # len()
            # The length of a string can be accessed by utilizing the built-in
            #  function len() that takes in a string as an argument and returns
            #  the character count. Notice in the example below white space counts:
len(test_string)  #  Evaluates as 16
len(start)  #  Evaluates as 2
len(end)  #  Evaluates as 2

        # str.lower(), str.upper(), and str.title()
            # The .lower() function turns all the characters in the string to their
            #  lower case varient. The .upper() function performs a similar operation
            #  but turns all the characters into their upper case varients. The final
            #  .title() will return the string true to its original form. Each varient
            #  can be found in the example below:
base_string = 'The Night Is Young'
print(base_string.title())  #  The Night Is Young
print(base_string.upper())  #  THE NIGHT IS YOUNG
print(base_string.lower())  #  the night is young

        # str.split()
            # The built-in function .split() takes in a string and splits it based
            #  on the input passed in. If there is no input then the split will
            #  occur on the white space. Below are three variants:
print(base_string.split())  #  ['The', 'Night', 'Is', 'Young']
print(base_string.split('Is'))  #  ['The Night ', ' Young']
print(base_string.split('g'))  #  ['The Ni', 'ht Is Youn', '']

#Lesson Two:       Lists
    # Lists
        # In Python, lists are ordered collections of items that can contain
        #  different data types such as strings, integer, float values, etc.
        #  A List can be declared with brackets '[]' with the entries being
        #  seperated by commas. Two examples can be found below where a list
        #  contains only one data type and one where it varies:
numbered_list = [39, 46, 28, 44]
random_list = ['The', 66, 'def', 2.1, ['e', 'h', 'd']]

    # List Indexing and Slicing
        # Items in a list can be accessed similar to strings utilizing the index.
        #  Using brackets again we start the selection at the 0 index and moving up
        #  from there. Slicing works as anticipated (similar to strings) and can be
        #  seen in the demonstration below:
print(numbered_list[0])  #  39
print(random_list[1:3])  #  [66, 'def']

    # Common Built-in Methods
        # len()
            # The length of a list can be measured using the built-in function len()
            #  by passing in the list. Below shows the call on both lists:
print(len(numbered_list))  #  4
print(len(random_list))  #  5

        # .append()
            # The built-in append() function takes in an argument and appends it to
            #  the end of the list.
numbered_list.append(123)  #  appends 123 to the end of the numbered list
random_list.append('1B')  #  appends '1B' to the end of the random list
        # .remove()
            # The built-in method .remove() will remove the item that is passed in
            #  as the argument. The example below shows a removal on both lists:
numbered_list.remove(46)  #  removes 46 from the numbered list
random_list.remove('def')  #  removes 'def' from the random list

        # .pop()
            # The .pop() takes an index and removes the element given at that
            #  index. If no index is provided then the final element is poped.
numbered_list.pop()  #  removes 44 from the numbered list
random_list.pop(0)  #  removes 'The' from the random list

#Lesson Three:     Tuples
    # Tuples
        # Tuples are one of the built-in data structures in Python. Just like lists,
        #  tuples can hold a sequence of items but they are more memory
        #  efficient and have a slightly higher time efficiency than lists. This is
        #  because tuples are immutable and as a result are useful when working with
        #  data that does not need to be changed. In Python, tuples are defined with
        #  parentheses () with comma-seperated values like in the example before:
example_tuple = ('night', 32, 'day', 59)
example2_tuple = ('evening',)  #  tuple with one element

    # Tuples Indexing And Slicing
        # Items in a tuple can be accessed using their index similar to lists. Slicing
        #  works with the same notation utilizing  a colon ':' between the two indices
        #  of the selection. Both examples can be found below:
print(example_tuple[1])  #  32
print(example2_tuple[0])  #  evening
print(example_tuple[0:2])  #  ('night', 32)

    # Common Built-in Functions
        # len()
            # The length of a tuple can be measured using the built-in function len().
            #  It takes the tuple as an argument to count the items in the tuple
            #  similar to list and can be seen below:
print(len(example_tuple))  #  4
print(len(example2_tuple))  #  1
        # max()
            # If all of the tuples values have the same data type then max() will
            #  either return the largest numerical value or the string closest to
            #  the letter "Z" like below:
example3_tuple = (123, 999, 872)
example4_tuple = ('first', 'second', 'third')
print(max(example_tuple))  #  Throws an error
print(max(example3_tuple))  #  999
print(max(example4_tuple))  #  third

        # min()
            # the built-in min() function is limited similarly to max() but
            #  functions in the reverse manor. The smallest numerical value or
            #  string closes to the letter "A" like below:
print(min(example_tuple))  #  Throws an error
print(min(example3_tuple))  #  123
print(min(example4_tuple))  #  first

        # .index()
            # The built-in method .index() takes in a value as the argument
            #  and returns the index of that value if found. Two examples can
            #  be found below:
print(example3_tuple.index(999))  #  2
print(example4_tuple.index('third'))  #  3

        # .count()
            # The build-in method .count() takes in a value as an argument
            #  but returns the number of occurances found in the tuple. A few
            #  examples can be found below:
example5_tuple = ('abc', 'abc', 2, 3, 4)
print(example3_tuple.index(9))  #  0
print(example4_tuple.index('third'))  #  1
print(example5_tuple.index('abc'))  #  2

#Lesson Four:      Dictionaries
#Lesson Five:      Sets
#Lesson Six:       Queues and Stacks