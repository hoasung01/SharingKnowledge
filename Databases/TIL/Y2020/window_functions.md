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

```html
    - LAG(value, offset), which outputs a value from an offset number previous to
    the current row in the report.
    - LEAD(value, offset), which outputs a value from a offset number after the current
    row in the report.
```