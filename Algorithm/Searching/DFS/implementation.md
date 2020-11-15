```python
graph = {
  'A': set(['B', 'C']),
  'B': set(['A', 'D', 'E']),
  'C': set(['A', 'F']),
  'D': set(['B']),
  'E': set(['B', 'F']),
  'F': set(['C', 'E'])
}

def dfs(graph, start_node):
  visited = set()
  stack = [start_node]

  while stack:
    node = stack.pop()
    if node not in visited:
      visited.add(node)
      stack.extend(graph[node] - visited)
  return visited


print(dfs(graph, 'A')) # {'E', 'D', 'F', 'A', 'C', 'B'}
```

[source](https://eddmann.com/posts/depth-first-search-and-breadth-first-search-in-python/)
[visualization](https://www.cs.usfca.edu/~galles/visualization/DFS.html)