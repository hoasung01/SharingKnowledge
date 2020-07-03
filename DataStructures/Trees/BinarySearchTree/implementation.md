```python
  class Node:
    def __init__(self, data = 0, left = None, right = None):
      self.data = data
      self.left = left
      self.right = right
```
  which defined class is better? I prefer below one

```python
  class Node:
    def __init__(self, key):
      self.left = None
      self.right = None
      self.data = key
```

```python
  class BST:
    def __init__(self):
      self.root = None
```

