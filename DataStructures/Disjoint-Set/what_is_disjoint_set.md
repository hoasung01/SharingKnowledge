```html
    disjoint-set data structure (also called a union-find data structure or
    merge-find set) that keeps track of a set of elements partitioned into a number of disjoint (non-overlaping) subsets.
    In other words, disjoint set is a group of sets where no item can be in more than one set.
    It is also called an union-find data structure as it supports union and find operations on subsets.

    1. Find: it determines in which subset a particular elements is in and returns the
    representative of that particular set.
    An item from this set typically acts as "representative" of the set.
    2. Union: it merges two different subsets into a single subset and respresentative of one set becomes representative of other.
    3. MakeSet: create a set containing only a given element in it

    [more info](https://en.wikipedia.org/wiki/Disjoint-set_data_structure)
    [vnoi](https://vnoi.info/wiki/algo/data-structures/disjoint-set)
    [techiedelight](https://www.techiedelight.com/disjoint-set-data-structure-union-find-algorithm/)
    [disjoint-data-strutures](https://www.hackerearth.com/practice/data-structures/disjoint-data-strutures/basics-of-disjoint-data-structures/tutorial/)
```

```html
    - Cấu trúc này bao gồm 3 thao tác cơ bản như sau:
    1. makeSet(): Tạo ra tập hợp các phần tử ban đầu
    2. findSet(): Là thao tác sẽ thực hiện và trả về phần tử đại diện
    của tập hợp
    3. unionSet(u, v): Ghép 1 phần tử vào tập hợp lớn hoặc ghép 2 tập hợp
    lại với nhau. Nếu 2 phần tử đã cùng tập hợp thì thao tác này sẽ không thực hiện

    - Độ phức tạp: Mỗi thao tác sẽ có chi phí O(N)
```