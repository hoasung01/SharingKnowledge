| Name Begins With | Variable Scope       |
| ---------------- | -------------------- |
| $                | A global variable    |
| @                | An instance variable |
| [a-z] or _       | A local variable     |
| [A-Z]            | A constant           |
| @@               | A class variable     |

```html
1. global variable
  - is accessible from anywhere
2. instance variable
  - their value are local to specific instances of an object
3. local variable
  - declared in a method or within a loop cannot be accesed
    outside that loop or method
4. constant
  -  is a value that once assigned a value, should not be changed
5. class variable
  - a variable that is shared amongst all instances of a class.
    This means that only one variable value exists for all objects
    instantiated from this class.
```