Core Built-in Functions

- The `print()` function outputs specified objects to the screen, accepting multiple arguments separated by commas.
- The `type()` function returns the data type of its single argument, which is useful for tracking variable types and avoiding errors.

Combining Functions

- Functions can be nested, where the output of one function serves as the input for another, such as `print(type("This is a string"))` to display the data type.

Numeric and Sorting Functions

- The `max()` and `min()` functions return the largest and smallest numeric values, respectively, from multiple arguments or an iterable like a list.
- The `sorted()` function sorts the elements of an iterable (like a list or string) in ascending order by default, returning a new sorted list without altering the original iterable.
## print() 

The print() function outputs a specified object to the screen. The print() function is one of the most commonly used functions in Python because it allows you to output any detail from your code.

To use the print() function, you pass the object you want to print as an argument to the function. The print() function takes in any number of arguments, separated by a comma, and prints all of them. For example, you can run the following code that prints a string, a variable, another string, and an integer together:

```python
month = "September"

print("Investigate failed login attempts during", month, "if more than", 100)
```


## max() and min() 

The max() function returns the largest numeric input passed into it. The min() function returns the smallest numeric input passed into it.

The max() and min() functions accept arguments of either multiple numeric values or of an iterable like a list, and they return the largest or smallest value respectively.

In a cybersecurity context, you could use these functions to identify the longest or shortest session that a user logged in for. If a specific user logged in seven times during a week, and you stored their access times in minutes in a list, you can use the max() and min() functions to find and print their longest and shortest sessions:

```python
time_list = [12,2,32,19,57,22,14]

print(min(time_list))

print(max(time_list))
```


## sorted()

The sorted() function sorts the components of a list. The sorted() function also works on any iterable, like a string, and returns the sorted elements in a list. By default, it sorts them in ascending order. When given an iterable that contains numbers, it sorts them from smallest to largest; this includes iterables that contain numeric data as well as iterables that contain string data beginning with numbers. An iterable that contains strings that begin with alphabetic characters will be sorted alphabetically.

The sorted() function takes an iterable, like a list or a string, as an input. So, for example, you can use the following code to sort the list of login sessions from shortest to longest:

```python
time_list = [12, 2, 32, 19, 57, 22, 14]

print(sorted(time_list))

#Orignal list
print(time_list)
```


https://docs.python.org/3/library/functions.html