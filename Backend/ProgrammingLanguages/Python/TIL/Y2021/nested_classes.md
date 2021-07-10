1. Why
- Grouping of two or more classes
 + ex: Car need an Engine, Engine won't be used without Car
 -> make an inner class Engine inside class Car

```python
class Car:
    """Car Class"""

    def __init__(self):
        ## instantiating the 'Inner' class
        self.engine = self.Engine()

    def reveal(self):
        ## calling the 'Inner' class function display
        self.engine.engine_display("Calling Engine class function from Car class")

    class Engine:
        """Inner Engine Class"""

        def engine_display(self, msg):
            print(msg)
```


[source](https://www.datacamp.com/community/tutorials/inner-classes-python)