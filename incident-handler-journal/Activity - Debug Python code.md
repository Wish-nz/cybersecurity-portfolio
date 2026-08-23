## Scenario

In your work as a security analyst, you need to apply debugging strategies to ensure your code works properly.

Throughout this lab, you'll work with code that is similar to what you've written before, but now it has some errors that need to be fixed. You'll need to read code cells, run them, identify the errors, and adjust the code to resolve the errors.

## Task 1

The following code cell contains a syntax error. In this task, you'll run the code, identify why the error is occuring, and modify the code to resolve it. (To ensure that it has been resolved, run the code again to check if it now functions properly.)

```python
# For loop that iterates over a range of numbers
# and displays a message each iteration
# - was missing :

for i in range(10):
    print("Connection cannot be established")
    
```

---

## Task 2

In the following code cell, you're provided a list of usernames. There is an issue with the syntax. In this task, you'll run the cell, observe what happens, and modify the code to fix the issue.

```python
# Assign `usernames_list` to a list of usernames
# - Each element in `usernames_list` is a username and should be a string. In 
# - Python, a string should have quotation marks around it. changed so it now 
# - does

usernames_list = ["djames", "jpark", "tbailey", "zdutchma" "esmith", "srobinso", "dcoleman", "fbautist"]

# Display `usernames_list`

print(usernames_list)
```

---

## Task 3

In the following code cell, there is a syntax error. Your task is to run the cell, identify what is causing the error, and fix it.

```python

# Display a message in upper case 
print("update needed".upper())

# Calling a function in Python requires both opening and closing parantheses.

```

---

## Task 4

In the following code cell, you're provided a `usernames_list`, a `username`, and code that determines whether the username is approved. There are two syntax errors and one exception. Your task is to find them and fix the code. A helpful debugging strategy is to focus on one error at a time and run the code after fixing each one.

```python

# Assign `usernames_list` to a list of usernames that represent approved users

usernames_list = ["djames", "jpark", "tbailey", "zdutchma", "esmith", "srobinso", "dcoleman", "fbautist"]

# Assign `username` to a specific username 

username = "esmith"

# For loop that iterates over the elements of `usernames_list` and determines whether each element corresponds to an approved user

for name in usernames_list:

    # Check if `name` matches `username` 
    # If it does match, then display a message accordingly 

    if name == username:
        print("The user is an approved user")

```

## Error 1:
  File "<ipython-input-9-8f65398e07e0>", line 16
    if name = username:
            ^
SyntaxError: invalid syntax

## Error 2:
  File "<ipython-input-10-4d910d42e5a5>", line 17
    print("The user is an approved user")
        ^
IndentationError: expected an indented block

## Error 3:
NameError                                 Traceback (most recent call last)
<ipython-input-11-beb81205ed64> in <module>
      9 # For loop that iterates over the elements of `usernames_list` and determines whether each element corresponds to an approved user
     10 
---> 11 for name in username_list:
     12 
     13     # Check if `name` matches `username`

NameError: name 'username_list' is not defined


---

## Task 5

In this task, you'll examine the following code and identify the type of error that occurs. Then, you'll adjust the code to fix the error.

```python

# Assign `usernames_list` to a list of usernames

usernames_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab"]

# Assign `username` to a specific username

username = "eraab"

# Determine whether `username` is the final username in `usernames_list` 
# If it is, then display a message accordingly 

if username == usernames_list[4]:
    print("This username is the final one in the list.")

```

## Error 1:
IndexError                                Traceback (most recent call last)
<ipython-input-13-dd58b4c6c2be> in <module>
     10 # If it is, then display a message accordingly
     11 
---> 12 if username == usernames_list[5]:
     13     print("This username is the final one in the list.")

IndexError: list index out of range

---

## Task 6

In this task, you'll examine the following code. The code imports a text file into Python, reads its contents, and stores the contents as a list in a variable named `ip_addresses`. It then removes elements from `ip_addresses` if they are in `remove_list`. There are two errors in the code: first a syntax error and then an exception related to a string method. Your goal is to find these errors and fix them.

```python

# Assign `import_file` to the name of the text file

import_file = "allow_list.txt"

# Assign `remove_list` to a list of IP addressess that are no longer allowed to access the network 

remove_list = ["192.168.97.225", "192.168.158.170", "192.168.201.40", "192.168.58.57"]

# With statement that reads in the text file and stores its contents as a list in `ip_addresses` 

with open(import_file, "r") as file:
    ip_addresses = file.read()

# Convert `ip_addresses` from a string to a list

ip_addresses = ip_addresses.split()

# For loop that iterates over the elements in `remove_list`,
# checks if each element is in `ip_addresses`,
# and removes each element that corresponds to an IP address that is no longer allowed

for element in remove_list:
    if element in ip_addresses:
        ip_addresses.remove(element)

# Display `ip_addresses` after the removal process

print(ip_addresses)

```

## Error 1:

  File "<ipython-input-15-e9bdcbfcb5b3>", line 11
    with open(import_file, "r") as file
                                       ^
SyntaxError: invalid syntax


## Error 2:

NameError                                 Traceback (most recent call last)
<ipython-input-16-90a1df47b631> in <module>
     14 # Convert `ip_addresses` from a string to a list
     15 
---> 16 ip_addresses = split.ip_addresses()
     17 
     18 # For loop that iterates over the elements in `remove_list`,

NameError: name 'split' is not defined


---

## Task 7

In this final task, there are three operating systems: OS 1, OS 2, and OS 3. Each operating system needs a security patch by a specific date. The patch date for OS 1 is `"March 1st"`, the patch date for OS 2 is `"April 1st"`, and the patch date for OS 3 is `"May 1st"`.

The following code stores one of these operating systems in a variable named `system`. Then, it uses conditionals to output the patch date for this operating system.

However, this code has logic errors. Your goal is to assign the `system` variable to different values, run the code to examine the output, identify the error, and fix it.

```python

# Assign `system` to a specific operating system as a string

system = "OS 2"

# Assign `patch_schedule` to a list of patch dates in order of operating system

patch_schedule = ["March 1st", "April 1st", "May 1st"]

# Conditional statement that checks which operating system is stored in `system` and displays a message showing the corresponding patch date 

if system == "OS 1":
    print("Patch date:", patch_schedule[0])

elif system == "OS 2":
    print("Patch date:", patch_schedule[1])

elif system == "OS 3":
    print("Patch date:", patch_schedule[2])
    

```

## Error 1:
Patch date: March 1st

Errors in the indexing fixed.


## Conclusion

The main takeaway is that debugging is usually about **one error at a time**: read the message, identify the error type, fix the smallest thing that could be wrong, and rerun the code.
This lab also reinforced the most common Python mistakes: missing indentation, missing commas or parentheses, wrong variable names, off-by-one indexing, and logic errors where the code runs but gives the wrong result

