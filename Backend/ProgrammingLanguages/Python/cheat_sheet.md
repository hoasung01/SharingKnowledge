[pythonsheet](https://www.pythonsheets.com/notes/python-typing.html)

###show list methods of a object

```python
  dir(object)
```

###try catch

```python
  def divide(x, y):
    try:
      print(f'{x}/{y} is {x / y}')
    except ZeroDivisionError as e:
      print(e)
    else
      print("divide() function worked fine.")
    finally
      print("close all the resources here")
```

###raise exception