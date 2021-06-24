```html
Suppose you have function:

```python
def sum(a,key=5):
    return a + key
```

You can call this function in 2 ways:

```python
sum(1,2) or sum(1,key=2)
```

Suppose you want function sum to be called only using keyword arguments.

You add * to the function parameter list to mark the end of positional arguments.

So function defined as:

```python
def sum(a,*,key=5):
    return a + key
```

may be called only using sum(1,key=2)
```

```html
Bare * is used to force the caller to use named arguments - so you cannot define a function with * as an argument when you have no following keyword arguments.

[See this answer or Python 3 documentation for more details.] (https://docs.python.org/3/reference/compound_stmts.html#function-definitions)
```

```html
In simple english, it means that to pass the value for key, you will need to explicitly pass it as key="value".
```