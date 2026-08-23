
## Scenario

In this lab, you're working as a security analyst. You're responsible for preparing a security log file for analysis and creating a text file with IP addresses that are allowed to access restricted information.

## Task 1

In this task, you'll import a security log text file and store it as a string to prepare it for analysis.

In Python, a `with` statement is often used in file handling to open a file and then automatically close the file after reading it.

You're given a variable named `import_file` that contains the name of the log file that you want to import. Start by writing the first line of the `with` statement in the following code cell. Use the `open()` function, setting the second parameter to `"r"`. Note that running this code will produce an error because it will only contain the first line of the `with` statement; you'll complete this `with` statement in the task after this. Be sure to replace the `### YOUR CODE HERE ###` with your own code.


import_file = "login.txt"
with open(import_file, "r") as file:
    text = file.read()


---

## Task 2

Now, you'll use the `.read()` method to read the imported file, and you'll store the result in a variable named `text`. Afterwards, display the `text` and explore what it contains by running the cell. Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell.

import_file = "login.txt"
with open(import_file, "r") as file:
    text = file.read()
print(text)

---

## Task 3

The output in the previous step is one big string. In this task, you'll explore how you can split the string that contains the entire imported log file into a list of strings, one string per line.

Use the `.split()` method to perform this split and then display the result. Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell.

Note that displaying `.split()` doesn’t change what is stored in the `text` variable. Variable reassignment would be necessary if you want to store the result after splitting.

import_file = "login.txt"
with open(import_file, "r") as file:
    text = file.read()
print(text.split())

---
## Task 4

There is a missing entry in the log file. You'll need to account for that by appending it to the log file. You're given the missing entry stored in a variable named `missing_entry`.

Use the `.write()` method and the parameter `"a"` in the `open()` function. Be sure to replace each `### YOUR CODE HERE ###` with your own code before you run the following cell.

After the portion of the code that writes to the file, another with statement uses the `.read()` method to read the updated file into the `text` variable and then display it.


import_file = "login.txt"

missing_entry = "jrafael,192.168.243.140,4:56:27,2022-05-09"

with open(import_file, "a") as file:
    file.write(missing_entry)

with open(import_file, "r") as file:
    text = file.read()

print(text)

---

## Task 5

The next task you're responsible for is creating a text file. This text file should include a list of IP addresses that are allowed to access restricted information. Documenting this in a text file will help you communicate your findings to your security team.

Start by creating a variable named `import_file` that stores the name of the file, which should be `"allow_list.txt"`.

You're also given a variable named `ip_addresses` that stores a string containing the IP addresses that are allowed.

Run the code to display the two variables and explore what they contain. Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell.

# Assign `import_file` to the name of the text file that you want to create

import_file = "allow_list.txt"

# Assign `ip_addresses` to a list of IP addresses that are allowed to access the restricted information

ip_addresses = "192.168.218.160 192.168.97.225 192.168.145.158 192.168.108.13 192.168.60.153 192.168.96.200 192.168.247.153 192.168.3.252 192.168.116.187 192.168.15.110 192.168.39.246"

print(import_file)
print(ip_addresses)


---

## Task 6

Your next goal is to create a `with` statement in order to write the IP addresses to the text file you created in the previous step.

You'll first open the file using the `"w"` parameter. Then, you'll write the IP addresses to the file. Be sure to replace each `### YOUR CODE HERE ###` with your own code before you run the following cell. Note that the code cell will contain a `with` statement that writes to a file but does not display information to the screen, so running it will not produce an output.

import_file = "allow_list.txt"

ip_addresses = "192.168.218.160 192.168.97.225 192.168.145.158 192.168.108.13 192.168.60.153 192.168.96.200 192.168.247.153 192.168.3.252 192.168.116.187 192.168.15.110 192.168.39.246"

with open(import_file, "w") as file:
    file.write(ip_addresses)

---

## Task 7

In this final step, you'll complete the code you've been writing up to this point. You'll add code to read the file containing IP addresses.

Complete a `with` statement that reads the text file and stores it in a new variable called `text`.

Afterwards, display the contents of `text` and run the cell to explore the result. Be sure to replace each `### YOUR CODE HERE ###` with your own code before you run the following cell.

import_file = "allow_list.txt"

ip_addresses = "192.168.218.160 192.168.97.225 192.168.145.158 192.168.108.13 192.168.60.153 192.168.96.200 192.168.247.153 192.168.3.252 192.168.116.187 192.168.15.110 192.168.39.246"

with open(import_file, "w") as file:
    file.write(ip_addresses)

with open(import_file, "r") as file:
    text = file.read()

print(text)


---

## What are your key takeaways from this lab?

My key takeaways from this lab are:

I learned how to use Python’s open() function to read and write text files.

I learned that the with statement manages files safely and closes them automatically.

I used .read() to load an entire security log into a string.

I used .split() to break the log into separate entries for easier analysis.

I learned that append mode, "a", adds a missing record to the end of an existing file without overwriting its contents.

I learned that write mode, "w", creates a new file or replaces the existing contents.

I practised creating an allow-list file containing approved IP addresses and then reading it back for verification.

These file-handling techniques are useful for preparing security logs and access-control data for further analysis.


---


