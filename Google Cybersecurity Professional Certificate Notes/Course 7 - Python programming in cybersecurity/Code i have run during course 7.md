
#Python 

```python
# Print hello python
print ("Hello world!")
```


```python
# calculate numbers with print
print (1+1)
```


```python
#Determine boolean values
print (10<5)
print (9<12)
```

```python
#print a list
print (["D Tanaka","M Abadi","A Estraada"])
```

```python
# Use a variable to store a device ID
device_id = 'h32rb17'

print (device_id)
```

So the (is the container) and the 'or' "this" make the call specific

```python
# Use the type function

device_id = "h32rb17"
data_type = type(device_id)
print(data_type)
```

<class 'str'>    Class = STRING

---

You must always place a colon (:) at the end of the header. Without this syntax, the code will produce an error.

if (status == 200):

    print("OK")

---

if status == 200:
    print("OK")
elif status == 400:
    print("Bad Request")
elif status == 500:
```python
# Must give the server status a code below for the action to work.
status = 500
#
#
if status == 200:
	print("OK")
elif status == 400:
	print("Bad Request")
elif status == 500:
	print("Internal Server Error")
```

---


```python
for i in [1, 2, 3, 4]:
  print(i)
```

Think of 'i' as a temporary placeholder, like a sticky note you use to keep track of where you are in a list. When you're using a `for` loop, you're essentially telling the computer to go through a sequence of items one by one. The 'i' is just a common, short name given to the variable that holds the _current_ item the loop is looking at. It's like saying, "For _each item_ in this list, do something." That "each item" is what 'i' represents at that moment.


```python
max_devices = 5
i = 1

while i < max_devices:
	print ("User can still connect to additional devices")
	i = i + 1
print ("User has reached the max number of devices")
```
It works... Its  incredible 


```python
i=1
while i < 5:
	print(i)
	i=i+1
```


```python

for i in range(3):
	print("Connection could not be established.")

```

## Task 2

The `range()` function can also take in a variable. To repeat a specified action a certain number of times, you can first assign an integer value to a variable. Then, you can pass that variable into the `range()` function within a `for` loop.

In your code that displays a network message connection, incorporate a variable called `connection_attempts`. Assign the positive integer of your choice as the value of that variable and fill in the missing variable in the iterative statement. Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell. Test out the code with different values for `connection_attempts` and observe what happens.

```python
connection_attempts = 5

for i in range(5):
	print("Connection could not be established")

```


## Task 3

This task can also be achieved with a `while` loop. Complete the `while` loop with the correct code to instruct it to display `"Connection could not be established."` three times.

In this task, a `for` loop and a `while` loop will produce similar results, but each is based on a different approach. (In other words, the underlying logic is different in each.) A `for` loop terminates after a certain number of iterations have completed, whereas a `while` loop terminates once it reaches a certain condition. In situations where you do not know how many times the specified action should be repeated, `while` loops are most appropriate.

Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell.

```python

connection_attempts = 0

while connection_attempts < 3:
	print("Connection could not be established.")
	connection_attempts = connection_attempts + 1

```


## Task 4

Now, you'll move onto your next task. You'll automate checking whether IP addresses are part of an allow list. You will start with a list of IP addresses from which users have tried to log in, stored in a variable called `ip_addresses`. Write a `for` loop that displays the elements of this list one at a time. Use `i` as the loop variable in the `for` loop.

Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell.

ip_addresses = ["192.168.142.245", "192.168.109.50", "192.168.86.232", "192.168.131.147", "192.168.205.12", "192.168.200.48"]

```python
ip_addresses = ["192.168.142.245", "192.168.109.50", "192.168.86.232", "192.168.131.147", "192.168.205.12", "192.168.200.48"]

for i in ip_addresses:
	print(i)
```


## Task 5

You are now given a list of IP addresses that are allowed to log in, stored in a variable called `allow_list`. Write an `if` statement inside of the `for` loop. For each IP address in the list of IP addresses from which users have tried to log in, display `"IP address is allowed"` if it is among the allowed addresses and display `"IP address is not allowed"` otherwise.

Be sure to replace the `### YOUR CODE HERE ###` with your own code before you run the following cell.

```python

allow_list = ["192.168.243.140", "192.168.205.12", "192.168.151.162", "192.168.178.71", "192.168.86.232", "192.168.3.24", "192.168.170.243", "192.168.119.173"]
#
ip_addresses = ["192.168.142.245", "192.168.109.50", "192.168.86.232", "192.168.131.147","192.168.205.12", "192.168.200.48"]
#
for i in ip_addresses:
	if i in allow_list:
		print("IP address is allowed")
	else:
		print("IP address is not allowed")
# 
# 
```



