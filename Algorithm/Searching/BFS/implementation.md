```python
graph = {
  'A': ['B', 'C', 'E'],
  'B': ['A', 'D', 'E'],
  'C': ['A', 'F', 'G'],
  'D': ['B'],
  'E': ['A', 'B', 'D'],
  'F': ['C'],
  'G': ['C']
}

def bfs(graph, start_node):
  visited = []
  queue = [start_node]

  while queue:
    node = queue.pop(0)
    if node not in visited:
      visited.append(node)
      neighbours = graph[node]

      for neighbor in neighbours:
        queue.append(neighbor)
  return visited

print(bfs(graph, 'A'))
```

[source](https://www.codespeedy.com/breadth-first-search-algorithm-in-python/)