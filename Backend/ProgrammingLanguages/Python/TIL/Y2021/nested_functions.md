###nested functions ~ closure

```html
- A closure is a function object (a function that behaves like an object)
that remembers values in enclosing scopes even if they are not present in memory
- When a function is available inside another function then closure is created.
```

```python
#defining nested function
def outer(message):
    #text is having the scope of outer function
    text = message
    def inner():
        #using non-local variable text
        print(text)
    #return inner function
    return inner

# main method
if __name__=='__main__':
    func = outer('Hello!')
    func()
```

###purpose:
- Closures can avoid use of global variables and provides some form of data hiding

[source](https://www.studytonight.com/python/python-closures)