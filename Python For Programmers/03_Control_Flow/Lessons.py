#Lesson One:       if, elif, else
    # if Statements
        # An if statement evaluates an expression and either runs or skips the
        #  the code within the if statement dependent on the expression result.
high_score = 30
new_score = 40
if new_score > high_score:
    print('New High Score!')
    high_score = new_score

    # elif Statements
        # An elif statement is short for else if and can be appended after an
        #  if statement along with an expression and similar to an if statement
        #  if the expression is true the code inside runs. The elif is used before
        #  the else statement and this allows for chained if statements as seen
        #  below:
personal_best = 35

if new_score > high_score:
    print('New High Score!')
    high_score = new_score
elif new_score > personal_best:
    print('New Personal Best')
    personal_best = new_score

    # else Statements
        # By appending an else statement after the if loop we can control what
        #  on the false state of the if statement as in the example below:
if new_score > high_score:
    print('New High Score!')
    high_score = new_score
else:
    print('Better Luck Next Time!')

#Lesson Two:       Loops
    # for Loops
        # The for loop is used to iterate over items and execute code over each
        #  iteration. The two keywords, for and in, are used to descibe the element
        #  and the object that is being iterated over. Here is an example of
        #  iterating over a set of integers:
test_scores = [95, 90, 100, 80, 75, 90]
for current_score in test_scores:
    if(current_score > 90):
        print('A')
    elif(current_score > 80):
        print('B')
    elif(current_score > 70):
        print('C')
    elif(current_score > 60):
        print('D')
    else:
        print('F')

    # for Loops With Range
        # The range(n) function can be used with the for loop instead of in to
        #  execute the block of code n times. The example below will iterate
        #  between 0 and 2 for a total of 3 print statements running in the
        #  following code:
for current_index in range(3):
        print('Loop de Loop')

    # Nested for Loops
        # A for loop can have nested loops and is particularly useful when dealing
        #  with sets that contain subsets like in the example below:
super_set = [['Subset1-1', 'Subset1-2'], ['Subset2-1', 'Subset2-2']]
for list_of_sets in super_set:
    for single_entry in list_of_sets:
        print(single_entry)

    # While Loops
        # The while loop will run while the expression used is true. We can mimic
        #  the for loop with range by adjusting it to the following:
current_index = 0
while current_index < 3:
        print(current_index)
        current_index += 1

    # Infinite Loops
        # An infite loop can be made with the while loop by setting the expression
        #  to a condition that is not met while the loop is running. In case this
        #  occures ctrl+c can be used to terminate the program.

#Lesson Three:     Pass, Break, Continue
    # pass
        # The pass keyword is m,ostly used as a placeholder in a loop. Nothing
        #  is executed when pass is placed under a condition. In the following
        #  example the code will print out the name only if it does not contain
        #  an j:
name_set = ['George', 'Juan', 'Lisa', 'Jose']
for name in name_set:
        if 'j' in name.lower():
            pass  #  skips this iteration
        else:
            print(name)
    
    # break
        # The break keyword terminates the loop and is typically used to stop loops
        #  after a condition has been met. In the example below the condition that
        #  ends the loop is when a name contains an l:
for name in name_set:
        if 'l' in name.lower():
            break  #  ends the for loop after 'lisa'
        else:
            print(name)

    # continue
        # The continue keywords skips over an iteration if the condition is met
        #  and goes onto the next iteration. The primary difference betweek pass
        #  and continue is that continue goes onto the next iteration of the loop
        #  while pass does not do anything (as it is a placeholder)
for name in name_set:
        if 'g' in name.lower():
            continue  #  Skips over 'George'
        else:
            print(name)

#Lesson Four:       Error Handling
    # try and except
    
    # finally