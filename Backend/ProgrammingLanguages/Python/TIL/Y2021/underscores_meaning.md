```html
1. Single Leading Underscore: _var
  - Naming convention indicating a name is meant for internal use.
    Generally not enforced by the Python interpreter
    (except in wildcard imports) and meant as a hint to the programmer only.


2. Single Trailing Underscore: var_
  - Used by convention to avoid naming conflicts with Python keywords.

3. Double Leading Underscore: __var
  - Triggers name mangling when used in a class context.
    Enforced by the Python interpreter.


4. Double Leading and Trailing Underscore: __var__
  - Indicates special methods defined by the Python language.
    Avoid this naming scheme for your own attributes.


5. Single Underscore: _
  - Sometimes used as a name for temporary or insignificant
    variables (“don’t care”). Also: The result of the last expression in a Python REPL.

```

[source](https://dbader.org/blog/meaning-of-underscores-in-python)

