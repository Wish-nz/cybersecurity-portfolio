Understanding Return Statements

- A `return` statement executes inside a function and sends information back to where the function was called.
- This capability is valuable for security analysts, for example, to check file access permissions and return a Boolean value.

Practical Application: Analyzing Login Attempts

- You can create a function, such as `calculate_fails()`, to compute the percentage of failed login attempts.
- This function would take `total_attempts` and `failed_attempts` as parameters, calculate the `fail_percentage`, and then `return` this percentage.

Utilizing Returned Information

- The value returned by a function can be stored in a new variable, allowing it to be used in other parts of the program.
- For instance, you could use the returned `percentage` to implement a conditional statement that locks an account if the failed attempt percentage exceeds a certain threshold.

```python

def calculate_fails (total_attempts,failed_atempts):
	fail_percentage = failed_atempts / total_attempts
	return fail_percentage

percentage = calculate_fails (4 , 2)

if (percentage >= .5):
	print("Account Locked")
```

