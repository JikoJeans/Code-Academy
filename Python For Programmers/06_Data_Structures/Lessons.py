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
# print(max(example_tuple))  #  Throws an error
print(max(example3_tuple))  #  999
print(max(example4_tuple))  #  third

        # min()
            # the built-in min() function is limited similarly to max() but
            #  functions in the reverse manor. The smallest numerical value or
            #  string closes to the letter "A" like below:
# print(min(example_tuple))  #  Throws an error
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
# print(example3_tuple.index(9))  #  Throws an error
print(example4_tuple.index('third'))  #  1
print(example5_tuple.index('abc'))  #  2

#Lesson Four:      Dictionaries
    # Dictionaries
        # Dictionaries are one of the most frequently used built-in data structures
        #  in Python. Dictionaries are defined with curly brackets '{}'. They operate
        #  functionally the same as a hash table and as such each dictionary holds
        #  a key-value pair that is used to access the contents. An example of a
        #  dictionary declaration is provided below where the dictionary has 4
        #  key-pairs with strings used as the key and lists being the value stored:
test_scores = { 'student1' : [75, 80, 90, 80],
                'student2' : [80, 80, 90, 90],
                'student3' : [75, 80, 95, 80],
                'student4' : [75, 80, 90, 85]}

    # Accessing And Writing Values
        # In contrast to other data structures, there is no built-in ways to use
        #  an index to access values (for the same reasons as to why it a hash map
        #  can not be indexed). As a result if we want to access, update, or add
        #  new values to the dictionay we do so by using the keys as seen in the
        #  examples below:
test_scores['student1'] = [100, 100, 90, 80]
test_scores['student5'] = [90, 80, 90, 100]
print(test_scores['student1'])  #  [100, 100, 90, 80]
print(test_scores['student2'])  #  [80, 80, 90, 90]
print(test_scores['student5'])  #  [90, 80, 90, 100]

    # Common Built-in Functions
        # len()
            # The length of the dictionary can be found utilizing the built-in
            #  function len(). By passing the dictionary as the parameter we
            #  are returned the count of the number of key-value pairs as seen
            #  below:
print(len(test_scores))  #  5

        # .update()
            # The built-in method update() takes in a dictionary as an argument
            #  and updates the existing entries of the first dictionary. Any new
            #  key-value pairs will be added to the existing dictionary, but any
            #  overlapping key-pairs form the new dictionary will be used to
            #  overwrite the original dictionary. If the original dictionary
            #  contains unique keys that are not referenced in the new dictionary
            #  then the old values will remain as seen below:
final_scores = {'student1' : [75, 80, 90, 80],
                'student5' : [80, 80, 90, 90],
                'student6' : [50, 80, 90, 50],
                'student9' : [75, 80, 95, 90]}
print(len(final_scores))  #  4
print(len(test_scores))  #  5
final_scores.update(test_scores)
print(len(final_scores))  #  7

        # .keys() and .values()
            # The built-in functions .keys() and .values() can be used to return a
            #  list of either keys or values as seen below:
print(test_scores.keys())  #  dict_keys(['student1', 'student2', 'student3', 'student4', 'student5'])
print(test_scores.values())  #  dict_values([[100, 100, 90, 80], [80, 80, 90, 90],
                             # [75, 80, 95, 80], [75, 80, 90, 85], [90, 80, 90, 100]])      

#Lesson Five:      Sets
    # Sets
        # Sets are an immutable and unordered collection of unique elements that can consists of integer,
        #  floats, strings, and tuples. Due to the immutable nature, the set cannot contain elements such
        #  as lists, sets, or dictionaries as they are mutable. In Python, a set can be created with curly
        #  brackets or with the built-in function set() which will take in a list argument to create a set.
        #  Utilizing the set() method will drop any duplicates and we can can see the different declarations
        #  below:
first_set = {80, 80, 'nine', 90, 'ten'}
second_set = set(final_scores['student1'])
third_set = set(example_tuple)
print(first_set)  #  {80, 'nine', 90, 'ten'}
print(second_set)  #  {80, 90, 100}
print(third_set)  #  {32, 'day', 59, 'night'}

    # Accessing and Writing Values
        # Sets do not have indexes or keys so we have to use the in keyword to check if a set contains a value
        #  as seen below:
print(90 in first_set)  #  True
print(95 in second_set)  #  False

    # Common Built-in Methods
        # .add()
            # Because sets are immutable, existing elements cannot be changed, however a new element can be
            #  added by using the built-in method add() which takes in the element to add to the set as seen
            #  in the examples below:
first_set.add('eleven')
second_set.add(90)
third_set.add(64)

        # .update() and .union()
            # The built-in method .update() takes in any iterable object, such as tuples, lists, dictionaries,
            #  or sets, and adds the object to an existing set. Similarly, the built-in method .union() takes
            #  an iterable object and joins the new object with the existing object. Any duplicated elements
            #  will not be added as seen in the examples below:
print(third_set)  #  {32, 64, 'day', 'night', 59}
third_set.update(example3_tuple)
print(third_set)  #  {32, 64, 999, 872, 123, 'night', 'day', 59}
fourth_set = {'eleven'}
print(fourth_set)  #  {'eleven'}
fourth_set = fourth_set.union(first_set)
print(fourth_set)  #  {80, 'eleven', 'nine', 90, 'ten'}

        # .remove()
            # The built-in method .remove() takes in an element and removes it from the set. We can see
            #  in the examples below how the element removal occurs:
print(fourth_set)  #  {80, 'eleven', 90, 'ten', 'nine'}
fourth_set.remove('eleven')
print(fourth_set)  #  {80, 90, 'ten', 'nine'}
# fourth_set.remove('eleven')  #  would now produce an error as it no longer exists
    
    # for loops
        # Because sets are iterable, we can utilize a for loop to iterate through the set as seen in the
        #  example below:
contents = ""
for index in first_set:
    if contents == "":
        contents = index
    else:
        contents = f'{contents}, {index}'
print(contents)  #  ten, nine, 80, eleven, 90

#Lesson Six:       Queues and Stacks
    # The final two data structures aren't built into Python, but rather are can be made
    #  by utilizing classes in python. There is a Node class being used but this is an
    #  imported class.
        # Queues
            # Queues are collections of items that follow FIFO(First In First Out) protocol
            #  to store and remove data. This can be visualized as customers waiting in line
            #  and by extension the first customer in line is served first and every subsiquent
            #  customer must wait their turn before being served.
        # Implementation
            # Disclaimer - This code is copied from the code academy and as such I take no credit in its creation.
from node import Node
class Queue:
    def __init__(self):
        self.head = None
        self.tail = None
        self.size = 0
    def enqueue(self, value):
        if self.has_space():
            item_to_add = Node(value)
            print("Adding " + str(item_to_add.get_value()) + " to the queue!")
            if self.is_empty():
                self.head = item_to_add
                self.tail = item_to_add
            else:
                self.tail.set_next_node(item_to_add)
                self.tail = item_to_add
            self.size += 1
        else:
            print("Sorry, no more room!")  
    def dequeue(self):
        if self.get_size() > 0:
            item_to_remove = self.head
            print(str(item_to_remove.get_value()) + " is served!")
            if self.get_size() == 1:
                self.head = None
                self.tail = None
            else:
                self.head = self.head.get_next_node()
                self.size -= 1
            return item_to_remove.get_value()
        else:
            print("The queue is totally empty!")
    def peek(self):
        if self.size > 0:
            return self.head.get_value()
        else:
            print("No orders waiting!")
    def get_size(self):
        return self.size
    def is_empty(self):
        return self.size == 0
        # The following functions are used for this particular example
            # enqueue(): This method takes in a value and adds it to the queue if there is space or outputs
            #  'Sorry, no more room!'.
            # dequeue(): This method removes a value from the queue or prints 'The queue is totally empty!'.
            # peek(): This method returns the front value in the queue if there is a value. If the queue is
            #  empty then the method will output 'No orders waiting!'.
            # get_size(): This method returns the size of the queue.
            # is_empty(): This final method will return a boolean that is true if the queue is empty.
        # Stacks
            # Like queues, stacks are also collections of items added in order but a stack performs
            #  the LIFO(last-in-first-out) protocol to store and remove data. This can be best visualized
            #  with the example of plates, the last plate placed in a cabinet is the first plate used
            #  unless you did between plates.
        # Implentation
class Stack:
    def __init__(self, limit=1000):
        self.top_item = None
        self.size = 0
    def push(self, value):
        if self.has_space():
            item = Node(value)
            item.set_next_node(self.top_item)
            self.top_item = item
            self.size += 1
        else:
            print("All out of space!")
    def pop(self):
        if self.size > 0:
            item_to_remove = self.top_item
            self.top_item = item_to_remove.get_next_node()
            self.size -= 1
            return item_to_remove.get_value()
        else:
            print("This stack is totally empty.")
    def peek(self):
        if self.size > 0:
            return self.top_item.get_value()
        else:
            print("Nothing to see here!")
    def is_empty(self):
        return self.size == 0
    # The following functions are used for this particular example
            # push(): This method takes in a value and adds it to the stack if there is space or outputs
            #  'All out of space!'.
            # pop(): This method removes a value from the stack or prints 'All out of space!' if it is empty.
            # peek(): This method returns the top value in the stack if there is a value. If the stack is
            #  empty then the method will output 'This stack is totally empty.'.
            # is_empty(): This final method will return a boolean that is true if the stack is empty.