Understanding String Indices

- In Python, each character in a string is assigned a numerical index, starting from 0 for the first character.
- You can access individual characters by placing their index in square brackets after the string.

Slicing Strings

- Slicing allows you to extract a portion of a string by specifying a start and end index.
- The slice includes the character at the start index but excludes the character at the end index.

Searching with the `index` Method

- The `index` method finds the first occurrence of a specified character or substring within a string and returns its starting index. 
- It's important to remember that Python strings are case-sensitive, and the `index` method only returns the first match.


```python
"HELLO"[1]
```

```python
"HELLO"[3]
```


Slices return the first indices and not the last.

```python
"HELLO"[1:4]
```


```python
# Search for the chracter "L"
print("HELLO".index("L"))
```


---

# AI Query:
why when i run this excate code on my python windows to i get the result and then the next line reads "None"

## Coursea Ai answer:

It sounds like you're seeing an extra "None" printed after your code runs, even when the code itself seems correct. This often happens when you're running a Python function that **prints** something, and then you also **print the result of calling that function**.

Let me explain:

- **Functions that print:** Some functions are designed to directly display output to the console using `print()`.
- **Functions that return a value:** Other functions are designed to calculate a value and then `return` that value. If a function doesn't explicitly `return` anything, Python implicitly returns `None`.

If you have a function that prints something, and you then call that function inside another `print()` statement, you'll see the output from the function's internal `print()` and then `None` because the outer `print()` is trying to display the (non-existent) return value of the function.

Could you share the exact code you're running? That would help me understand exactly why you're seeing "None".


```python
# Search for the chracter "L"
print("HELLO".index("L"))
```


That's a great start! You've correctly used the `index()` method to search for the character "L" in the string "HELLO".

The `index()` method is like a detective for your strings! It helps you find the very first spot where a specific character or sequence of characters appears. Think of it like looking up a word in a dictionary – you're interested in where it first shows up.

In your example, when you run `print("HELLO".index("L"))`, Python will tell you that "L" is at index 2. Remember, Python starts counting from 0, so:

- 'H' is at index 0
- 'E' is at index 1
- The _first_ 'L' is at index 2

It's important to note that even though "HELLO" has two 'L's, the `index()` method will only ever return the position of the _first_ one it finds. It's like our detective friend stops after finding the first clue!

---

## Strings are Immutable
Cannot be changed after it is created and assigned a value"

```python
my_string = "HELLO"
# then make a "notation" or try to change a value in the string:
my_string[1] = "A"

```

Answers: 'str' object does not support item assignment.

---
