```html
TABLE A
id  firstname                   lastname                    Mark
-------------------------------------------------------------------
1   arun                        prasanth                    40
2   ann                         antony                      45
3   sruthy                      abc                         41
6   new                         abc                         47
1   arun                        prasanth                    45
1   arun                        prasanth                    49
2   ann                         antony                      49
```

```sql
select SUM(Mark) marksum, firstname from TableA
group by id,firstName
```

-> result from group by
```html
marksum  firstname
----------------
94      ann
134     arun
47      new
41      sruthy
```

```sql
SELECT SUM(Mark) OVER (PARTITION BY id) AS marksum, firstname FROM TableA
```
-> result from partition

```html
marksum firstname
-------------------
134     arun
134     arun
134     arun
94      ann
94      ann
41      sruthy
47      new
```

###PARTITION BY is analytic, while GROUP BY is aggregate
