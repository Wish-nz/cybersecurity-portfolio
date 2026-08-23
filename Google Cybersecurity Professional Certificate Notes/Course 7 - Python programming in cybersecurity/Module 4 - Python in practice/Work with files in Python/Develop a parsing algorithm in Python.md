Program Objective and Input Structure

- The program aims to identify users with three or more failed login attempts from a `.txt` log file.
- Each line in the log file represents a single failed login attempt by a username.

Algorithm Development Strategy

- The program imports and splits the log file content into a list of usernames.
- A `for` loop iterates through the list, and an `if` statement checks if the current username matches the user being searched for, incrementing a counter for each match.

Implementing the `login_check()` Function

- A function named `login_check()` is created, taking `login_list` (failed attempts) and `current_user` as parameters.
- Inside the function, a counter is initialized to 0, and a `for` loop with an `if` statement increments the counter when a failed attempt matches the `current_user`.
- Finally, an `if-else` statement checks if the counter is 3 or more; if so, an "account locked" alert is triggered, otherwise, the user can log in.


---

# Open, read, and split a text file
with open("login_attempts.txt", "r") as file:
file_text = file.read()
usernames = file_text.split()

### Create a function that counts a user's failed login attempts:

def login_check(login_list, current_user):
counter = 0
for i in login_list:
if i == current_user :
counter = counter + 1
if counter >= 3:
return "You have tried to login three or more times. Your account has been locked."
else:
return "You can log in!"

l

---
