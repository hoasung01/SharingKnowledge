```python
  def factorial(x):
    """This is a recursive function
    to find the factorial of an integer"""

    if x == 1:
        return 1
    else:
        return (x * factorial(x-1))

  num = 3
  print("The factorial of", num, "is", factorial(num))

  # explaination:

  # factorial(3)          # 1st call with 3
  # 3 * factorial(2)      # 2nd call with 2
  # 3 * 2 * factorial(1)  # 3rd call with 1
  # 3 * 2 * 1             # return from 3rd call as number=1
  # 3 * 2                 # return from 2nd call
  # 6                     # return from 1st call
```


```python
    def fib(n):
    if n==0:
        return 1
    elif n==1:
        return 1
    else:
        return fib(n-1) + fib(n-2)

    # fib(5)
    # = fib(4) + fib(3)
    # = fib(3) + fib(2) + fib(2) + fib(1)
    # = fib(2) + fib(1) + fib(1) + fib(0) + fib(1) + fib(0) + 1
    # = fib(1) + fib(0) + 1 + 1 + 1 + 1 + 1 + 1
    # = 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
    # = 8
```

