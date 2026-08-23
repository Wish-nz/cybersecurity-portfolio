Importing Text Files with Python

- The `with` statement in Python is used to handle external resources like files, ensuring they are automatically closed after use.
- The `open()` function is used to open files, taking the file name (including the `.txt` extension and potentially the file path) as its first parameter.

Reading File Content

- The second parameter of the `open()` function specifies the mode for file interaction; 'r' is used for reading, and 'w' for writing.
- The `read()` method converts the content of the opened file into a string, which can then be stored in a variable for further use.
```python

# open a file in python

with open("login_attempts.txt", "r") as file:
	file_text = file.read()

# the log file arenow callable as the "File" 

```