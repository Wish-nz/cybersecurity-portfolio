### **Function header**

The function header is what tells Python that you are starting to define a function. For example, if you want to define a function that displays an "investigate activity" message, you can include this function header:

def display_investigation_message():

The def keyword is placed before a function name to define a function. In this case, the name of that function is display_investigation_message.

### **Function body**

The body of the function is an indented block of code after the function header that defines what the function does. The indentation is very important when writing a function because it separates the definition of a function from the rest of the code.

To add a body to your definition of the display_investigation_message() function, add an indented line with the print() function. Your function definition becomes the following:

def display_investigation_message():

    print("investigate activity")
## Calling a function

After defining a function, you can use it as many times as needed in your code. Using a function after defining it is referred to as calling a function. To call a function, write its name followed by parentheses. So, for the function you previously defined, you can use the following code to call it:

display_investigation_message()

Although you'll use functions in more complex ways as you expand your understanding, the following code provides an introduction to how the display_investigation_message() function might be part of a larger section of code. You can run it and analyze its output:


```python
def display_investigation_message():
	print("investigate activity")

application_status = "potential concern"
email_status = "okay"

if application_status == "potential concern":
	print("application_log:")
	display_investigation_message()

if email_status == "potential concern":
	print("email log:")
```

