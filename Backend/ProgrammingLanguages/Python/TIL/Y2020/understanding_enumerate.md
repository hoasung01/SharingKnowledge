###what is enumerate

```
  Python’s built-in enumerate function allows us to loop
  over a list and retrieve both the index and the value
  of each item in the list
```


###using loop without enumerate

```python
  In [1]: list = ['a', 'b', 'c', 'd']

  In [2]: for x in list:
     ...:     print(x)
     ...:
  a
  b
  c
  d
```

###using enumerate


```python
  # t = ('apples', 'bananas', 'oranges')
  # can apply to tuple
  In [3]: list = ['a', 'b', 'c', 'd']

  In [4]: for idx, val in enumerate(list):
     ...:     print("%d, %s" % (idx, val))
     ...:
  0, a
  1, b
  2, c
  3, d
```