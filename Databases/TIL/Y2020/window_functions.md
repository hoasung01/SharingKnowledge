```html
    window functions are calculations that reference other rows
    in the table
```

```html
    syntax:

    SUM(value) OVER (PARTITION BY field ORDER BY field)

    - PARTITION BY = range of calculation
    - ORDER BY = order of rows when running calculation
```

```html
    1. type of window functions
    - SUM()
    - MAX()
    - MIN()
    - AVG()
    2. specific windonw functions:
    - LEAD()
    - LAG()
    - ROW_NUMBER()
    - RANK()
```