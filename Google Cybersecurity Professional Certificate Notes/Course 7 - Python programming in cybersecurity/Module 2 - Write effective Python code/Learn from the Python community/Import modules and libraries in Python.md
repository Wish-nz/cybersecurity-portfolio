The Python Standard Library

- The Python Standard Library is a vast collection of pre-built Python code, organized into modules, each designed for specific tasks. Examples include `re` for pattern searching, `csv` for CSV file handling, and `statistics` for numerical data analysis.
- The `statistics` module, for instance, offers functions like `mean()` and `median()` to calculate the average and middle value of numeric data, respectively.

Importing Modules

- To use modules from the Python Standard Library, you need to import them using the `import` keyword. You can import an entire module (e.g., `import statistics`) or specific functions (e.g., `from statistics import mean, median`).
- When importing an entire module, you must prefix the function call with the module name (e.g., `statistics.mean()`). If you import specific functions, you can call them directly (e.g., `mean()`).

External Libraries

- Beyond the Standard Library, you can also use external libraries like Beautiful Soup (`bs4`) for parsing HTML or NumPy (`numpy`) for numerical computations.
- External libraries require installation before they can be imported and used. This is typically done using a command like `%pip install numpy` in environments like Jupyter Notebook or Google Colab.