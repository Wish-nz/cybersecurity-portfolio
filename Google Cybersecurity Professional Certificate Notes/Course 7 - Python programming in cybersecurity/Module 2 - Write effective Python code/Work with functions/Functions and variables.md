Working with Variables in Functions

- **Parameters** are variables defined in a function header that are used within that function. For example, in `def remaining_login_attempts(maximum_attempts, total_attempts):`, `maximum_attempts` and `total_attempts` are parameters.
- **Arguments** are the actual data passed into a function when it is called. When `remaining_login_attempts(3, 2)` is called, `3` and `2` are the arguments.

Return Statements

- The `return` keyword is used to send output back from a function. For instance, `return maximum_attempts - total_attempts` will send the result of the calculation back.
- Return statements are useful for storing function output in variables for later use, such as in calculations or conditional statements.

Global and Local Variables

- **Global variables** are defined outside of any function and are accessible throughout the entire program.
- **Local variables** are defined within a function (including parameters) and are only accessible within that function. It is best practice to avoid reusing global variable names as local variable names to prevent confusion.