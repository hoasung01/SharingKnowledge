class Node:
  def __init__(self, data):
    self.left = None
    self.right = None
    self.data = data

  # version 1
  # def PrintTree(self):
  #   print(self.data)

  def insert(self, data):
    # if the node is greater than parent node,
    # it is inserted as a right node; otherwise
    # it is inserted as left
    if self.data:
      if data < self.data:
        if self.left is None:
          self.left = Node(data)
        else:
          self.left.insert(data)
      elif data > self.data:
        if self.right is None:
          self.right = Node(data)
        else:
          self.right.insert(data)
    else:
      self.data = data

  def search(self, value):
    if value < self.data:
      if self.left is None:
        return str(value) + " is not found"
      else:
        return self.left.search(value)
    elif value > self.data:
      if self.right is None:
        return str(value) + " is not found"
      else:
        return self.right.search(value)
    else:
      return str(self.data) +  " is found"

   # version 2
  def PrintTree(self):
    if self.left:
      self.left.PrintTree()
    print(self.data)
    if self.right:
      self.right.PrintTree()

# version 1
# root = Node(10)
# root.PrintTree()

root = Node(27)
# insert value one by one
# root.insert(14)
# root.insert(35)
# root.insert(31)
# root.insert(10)
# root.insert(19)

# root.PrintTree()

# result output
# 10
# 14
# 19
# 27
# 31
# 35
# print(root.search(28))

# insert values as an array
values = [1,5,20,99,45,12,44,41,18,7,11,19,82,87]
for value in values:
  root.insert(value)

root.PrintTree()
