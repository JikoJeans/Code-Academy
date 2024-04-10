#Lesson One:       String Methods
    # Strings in Python
        # In Python, strings are defined with single or double qoutes('' or "")
        # and can contain a combination of letters, numbers, symbols, and spaces.
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
        # of the string like in the example below:
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
#Lesson Three:     Tuples
#Lesson Four:      Dictionaries
#Lesson Five:      Sets
#Lesson Six:       Queues and Stacks