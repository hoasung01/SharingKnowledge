[source from geeksforgeeks](https://www.geeksforgeeks.org/binary-tree-set-1-introduction/)

```html
  A tree is represented by a pointer to the topmost node in tree.
  If the tree is empty, then value of root is NULL.
  A tree node contains following parts:

  1. Data
  2. Pointer to left child
  3. Pointer to right child
```

```python
  class Node:
    def __init__(self, key):
      self.left = None
      self.right = None
      self.data = key
```

```html
  # create root
  root = Node(1)
  ''' following is the tree after above statement
          1
        /   \
       None  None'''

  root.left      = Node(2);
  root.right     = Node(3);

  ''' 2 and 3 become left and right children of 1
             1
           /   \
          2      3
       /    \    /  \
     None None None None'''


  root.left.left  = Node(4);
  '''4 becomes left child of 2
             1
         /       \
        2          3
      /   \       /  \
     4    None  None  None
    /  \
  None None'''
```