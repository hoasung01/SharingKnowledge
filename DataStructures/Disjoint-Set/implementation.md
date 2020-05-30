```python
    # class to represent a disjoint set
    class DisjointSet:
        parent = {}

        # perform MakeSet operation
        def makeSet(self, universe):
            # create n disjoint sets (one for each item)
            for i in universe:
                self.parent[i] = i

        # find the root of the set in which element k belongs
        def Find(self, k):
            # if k is root
            if self.parent[k] == k:
                return k
            # recur for parent until we find root
            return self.Find(self.parent[k])

        # perfom union of two subsets
        def Union(self, a, b):
            # find root of the sets in which elements
            # x and y belongs
            x = self.Find(a)
            y = self.Find(b)
            self.parent[x] = y

    def printSets(universe, disjoint_set):
        print([disjoint_set.Find(i) for i in universe])

    if __name__ == '__main__':
        # universe of items
        universe = [1, 2, 3, 4, 5]

        # initialize Disjoint Set
        ds = DisjointSet()

        # create singleton set for each element in universe
        ds.makeSet(universe)
        printSets(universe, ds)

        ds.Union(4, 3) # 4 and 3 are in the same set
        printSets(universe, ds)

        ds.Union(2, 1) # 1 and 2 are in the same set
        printSets(universe, ds)

        ds.Union(1, 3) # 1, 2, 3, 4 are in the same set
        printSets(universe, ds)
```

```html
[source](https://www.techiedelight.com/disjoint-set-data-structure-union-find-algorithm/)
```