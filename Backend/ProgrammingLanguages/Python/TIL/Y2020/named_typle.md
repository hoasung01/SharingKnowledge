```python
    from collections import namedtuple
    Point = namedtuple('Point', 'x y')
    pt1 = Point(1.0, 5.0)
    pt2 = Point(2.5, 1.5)
```

```html
    However, as with tuples, attributes in named tuples are immutable:

    >>> Point = namedtuple('Point', 'x y')
    >>> pt1 = Point(1.0, 5.0)
    >>> pt1.x = 2.0
    AttributeError: can't set attribute
```