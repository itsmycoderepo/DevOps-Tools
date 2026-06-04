# 🐍 Python Fundamentals Guide

> 🚀 Complete Python Basics & Programming Foundations Manual

---

## 📖 Overview

This guide covers:

* 📝 Python Syntax
* 🔍 Indentation Rules
* 💬 Comments
* 📦 Variables
* 🏷️ Variable Naming Rules
* 🐪 Camel Case, Pascal Case & Snake Case
* 🔄 Creating Variables
* 🔎 Data Types
* ⌨️ User Inputs
* 🔄 Type Casting

---

# 📚 Table of Contents

1. Python Syntax
2. Python Comments
3. Python Variables
4. Variable Names
5. Multi-Word Variable Names
6. Creating Variables
7. Get the Type
8. Single or Double Quotes
9. Case-Sensitive Variables
10. Multiple Variable Assignment
11. Python Data Types
12. Setting Data Types
13. User Inputs
14. Python Casting

---

# 1️⃣ Python Syntax

Python is known for its clear and readable syntax.

## 🔍 Indentation

* Python uses indentation to define blocks of code.
* Consistent indentation is crucial because it indicates the scope of loops, functions, and other constructs.

### ✅ Correct Example

```python
if True:
    print("This is indented")

if 5 > 2:
    print("So is this")
```

### ❌ Incorrect Example

```python
if True:
print("This is not indented properly")

if 5 > 2:
print("This will cause an error")
```

---

# 2️⃣ Python Comments

Comments can be used to:

* Explain Python code.
* Improve readability.
* Prevent execution while testing.

## 💬 Single-Line Comment (`#`)

```python
# This is a single-line comment
```

## 📄 Multi-Line Comment (`""" """`)

```python
"""
This is a
multi-line comment
"""
```

---

# 3️⃣ Python Variables

Variables are containers for storing data values.

---

# 4️⃣ Variable Names

A variable can have a short name (`x`, `y`) or a descriptive name (`age`, `carname`, `total_volume`).

## 📋 Rules for Python Variables

* A variable name must start with a letter or underscore (`_`)
* A variable name cannot start with a number
* A variable name can only contain alpha-numeric characters and underscores
* Variable names are case-sensitive
* Variable names cannot be Python keywords

### ✅ Legal Variable Names

```python
myvar = "John"
my_var = "John"
_my_var = "John"
myVar = "John"
MYVAR = "John"
myvar2 = "John"
```

### ❌ Illegal Variable Names

```python
2myvar = "John"
my-var = "John"
my var = "John"
```

---

# 5️⃣ Multi-Word Variable Names

Variable names with multiple words can be written using different conventions.

## 🐪 Camel Case

```python
myVariableName = "John"
```

## 🏛️ Pascal Case

```python
MyVariableName = "John"
```

## 🐍 Snake Case

```python
my_variable_name = "John"
```

---

# 6️⃣ Creating Variables

Python has no command for declaring a variable.

A variable is created the moment you first assign a value to it.

```python
x = 5
y = "John"

print(x)
print(y)

my_variable_name = "John"
```

## 🔄 Dynamic Typing

Variables can change data type after assignment.

```python
x = 4        # x is int

x = "Sally"  # x is now str

print(x)
```

---

# 7️⃣ Get the Type

Use the `type()` function to determine a variable's data type.

```python
x = 5
y = "John"

print(type(x))
print(type(y))
```

---

# 8️⃣ Single or Double Quotes?

String variables can be declared using either single or double quotes.

```python
x = "John"

# Same as

x = 'John'
```

---

# 9️⃣ Case-Sensitive Variables

```python
a = 4
A = "Sally"
```

`a` and `A` are treated as different variables.

---

# 🔟 Many Values to Multiple Variables

```python
x, y, z = "Orange", "Banana", "Cherry"

print(x)
print(y)
print(z)
```

> ⚠️ Make sure the number of variables matches the number of values.

---

# 1️⃣1️⃣ One Value to Multiple Variables

```python
x = y = z = "Orange"

print(x)
print(y)
print(z)
```

---

# 1️⃣2️⃣ Python Data Types

## 📦 Built-in Data Types

| Category       | Data Types                         |
| -------------- | ---------------------------------- |
| Text Type      | `str`                              |
| Numeric Types  | `int`, `float`, `complex`          |
| Sequence Types | `list`, `tuple`, `range`           |
| Mapping Type   | `dict`                             |
| Set Types      | `set`, `frozenset`                 |
| Boolean Type   | `bool`                             |
| Binary Types   | `bytes`, `bytearray`, `memoryview` |
| None Type      | `NoneType`                         |

---

# 1️⃣3️⃣ User Inputs

## ⌨️ Basic Input

```python
name = input("Enter your name: ")
print("Hello,", name)
```

## 🔢 Integer Input

```python
age = int(input("Enter your age: "))
print("Your age is:", age)
```

## 💰 Float Input

```python
salary = float(input("Enter your salary: "))
print("Salary:", salary)
```

## ➕ Multiple Inputs

```python
a, b = map(int, input("Enter two numbers: ").split())
print(a + b)
```

## 📋 List Input

```python
numbers = list(map(int, input("Enter numbers: ").split()))
print(numbers)
```

## ⚠️ Exception Handling

```python
try:
    num = int(input("Enter a number: "))
    print("You entered:", num)

except ValueError:
    print("Invalid input! Please enter a number.")
```

## 🔄 Input Loop

```python
while True:
    user_input = input("Type 'exit' to stop: ")

    if user_input.lower() == "exit":
        break

    print("You typed:", user_input)
```

---

# 1️⃣4️⃣ Python Casting

## 🔄 Integer Casting

```python
x = int(1)
y = int(2.8)
z = int("3")
```

## 🔄 Float Casting

```python
x = float(1)
y = float(2.8)
z = float("3")
w = float("4.2")
```

## 🔄 String Casting

```python
x = str("s1")
y = str(2)
z = str(3.0)
```

---

# 🎉 Python Fundamentals Completed

| Topic         | Status    |
| ------------- | --------- |
| Python Syntax | ✅ Covered |
| Comments      | ✅ Covered |
| Variables     | ✅ Covered |
| Data Types    | ✅ Covered |
| User Inputs   | ✅ Covered |
| Type Casting  | ✅ Covered |

---

# 🚀 Happy Learning Python 🚀
