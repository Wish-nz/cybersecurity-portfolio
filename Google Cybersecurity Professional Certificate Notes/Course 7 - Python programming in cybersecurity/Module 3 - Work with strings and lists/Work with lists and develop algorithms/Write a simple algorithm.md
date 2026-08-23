Understanding Algorithms

- An algorithm is a set of rules designed to solve a problem.
- It takes an input, performs tasks based on that input, and returns a solution as an output.

Applying Algorithms to IP Addresses

- The goal is to extract the first three digits of IP addresses from a list to identify network information.
- This problem can be broken down into smaller steps using Python concepts like loops, lists, and strings.

Python Techniques for IP Extraction

- **String Slicing:** This technique is used to extract specific characters from a string. For example, `address[0:3]` extracts the first three characters of an IP address.
- **Loops:** A `for` loop can be used to apply the string slicing solution to every IP address in a list, iterating through each element.
- **Append Method:** The `append()` method is used to add the extracted three-digit IP segments to a new list.