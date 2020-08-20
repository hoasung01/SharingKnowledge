###String Interpolation

```html
  is the process of substituting values of variables
  into placeholders in a string, sounds like string
  concatenation right! But without using + or concatenation methods.
```

###ways to string interpolation

```html
  1. %-formatting
  2. Str.format()
  3. f-strings
  4. Template Strings
```

###examples

1. %-formatting
```python
  n1 = 'Hello'
  n2 ='GeeksforGeeks'

  # for single substitution
  print("Welcome to % s"% n2)
  # print("Welcome to %s" % n2)

  # for single and multiple substitutions () mandatory
  print("% s ! This is % s."%(n1, n2))

  # Welcome to GeeksforGeeks
  # Hello! This is GeeksforGeeks.
```

2. Str.format()
```python
  n1 = 'Hello'
  n2 ='GeeksforGeeks'

  # for single substitution
  print('Hello, {}'.format(n1))

  # for single or multiple substitutions
  # let's say b1 and b2 are formal parameters
  # and n1 and n2 are actual parameters
  print("{b1}! This is {b2}.".format(b1 = n1, b2 = n2))

  # else both can be same too
  print("{n1}! This is {n2}.".format(n2 = n2, n1 = n1))
```

3. f-strings
```python
    n1 = 'Hello'
    n2 ='GeeksforGeeks'

    # f tells Python to restore the value of two
    # string variable name and program inside braces {}
    print(f"{n1}! This is {n2}")

    # inline arithmetic
    print(f"(2 * 3)-10 = {(2 * 3)-10}")
```

4. Template Strings
```python
  from string import Template

  n1 = 'Hello'
  n2 ='GeeksforGeeks'

  # made a template which we used to
  # pass two variable so n3 and n4
  # formal and n1 and n2 actual
  n = Template('$n3 ! This is $n4.')

  # and pass the parameters into the template string.
  print(n.substitute(n3 = n1, n4 = n2))
```
