```html
    [K-means_clustering](https://en.wikipedia.org/wiki/K-means_clustering#Standard_algorithm)
```

```python
  from math import sqrt

  class Point(object)
    def __init__(self, x, y):
      self.x = x
      self.y = y

    def distance(self, other):
      x = self.x - other.x
      y = self.y - other.y
      return sqrt((x**2) + (y**2))

    def __repr__(self):
      print("Point({}, {})").format(self.x, self.y)
```

```python
  class Cluster(object):
    def __init__(self, x, y):
      self.center = Point(x, y)
      self.points = []

    def update(self):
      xSum = 0
      ySum = 0

      for point in self.points:
        xSum += point.x
        ySum += point.y

      xCentroid = xSum / len(self.points)
      yCentroid = ySum / len(self.points)
      self.center = Point(xCentroid, yCentroid)
      self.points = []

    def add_point(self, point):
      return self.points.append(point)


  def compute_result(points):
    points = [Point(*point) for point in points]
    a = Cluster(1, 0)
    b = Cluster(-1, 0)
    a_old = []

    for _ in range(10000): # max interations
      for point in points:
        if point.distance(a.center) < point.distance(b.center):
          # add the right point
          a.add_point(point)
        else:
          b.add_point(point)

      if a_old == a.points:
        break

      a_old = a.points
      a.update()
      b.update()

    cluster1 = (a.center.x, a.center.y)
    cluster2 = (b.center.x, b.center.y)
    return [cluster1, cluster2]
```