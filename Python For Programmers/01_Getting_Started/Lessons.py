#Lesson One:       Welcome To Python 3 For Programmers
    #Python 3 for programmers is a course geared towards programmers who are looking to learn Python
    # without relearning the basics of coding. The topics will go in the same order as the folders
    # and as such this folder covers the basics of getting started with python.

#Lesson Two:       Why Python 3?
    #Python is one of the most popular programmnig languages with its debut starting in 1991. While
    # it has varients this course will focus on Python 3 as it is easy to pick up, well-documented
    # and supported, and it is widely used in software engineering and data analytics. Python can
    # be used to develope software (ex. developing a website with the flask library), data science
    # (ex. creating a machine learning model with TensorFlow), and to automate data analysis (ex.
    # creating scripts to automate data analysis using Excel).

#Lesson Three:     Python Style Guide
    # Overview:
        #This portion covers how to write clean Python code following PEP 8 style guide.
    # Naming Conventions
        #When writing code in Python we determine the naming convention dependent on if we are naming
        # a class, function, or variable name.
        # Class: 
            #Resort to CapWords convention which dictates that each word should have the first
            # letter capitalized. Some examples include ClassName, LinkedList, and IsDogOrCat.
class ClassName:
    def __init__(self, name):
        self.name = name
    def show_name(self):
        print("My class is: ", self.name)
class_name = ClassName('Philosophy')
        # Function:
            #Resort to using all lower case letters and underscores to seperate words if needed.
            # Some examples include settings_reset, encryption_check,and encrypt_password_for_user.
def total_damage(first_attack, second_attack):
    total = first_attack + second_attack
    return total
        # Variable Name:
            #Similar to functions resort to using all lower case letters and underscores as needed.
            # Examples include calculated_sum, organized_list, and encrypted_user_password.
    # Indentation
        #There should be 4 spaces used per indentation as python utilizes this indentation to group
        # lines of code together. It is important to note that we cannot mix spaces and tabs in Python
        # so it is important to remain consistent while workoing on a larger script.
    # Comments
        #Comments can be defined in blocks as they have been above or they can also be included inline
        # with code but 2 comments should be using for spacing like in the example below.
allowed_to_enter = True  #  User has access
print("Allow Entrance")  #  Grant them access

#Lesson Four:      Command Line and IDEs
    # Downloading Python 3
        #Setting up Python 3 is done by downloading it from the official website.
    # Command Line
        #Python files can be ran by first navigating to the directory and running following command.
            #python fileName.py
    # IDEs
        #Polular IDEs for python include Visual Studio Code, PyCharm, and Jupyter NoteBook.