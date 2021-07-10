###using where
```sql
-- SQL :
SELECT * FROM census
WHERE sex = F

-- SQLAlchemy :
db.select([census]).where(census.columns.sex == 'F')
```

###using in
```sql
-- SQL :
SELECT state, sex
FROM census
WHERE state IN (Texas, New York)

-- SQLAlchemy :
db.select([census.columns.state, census.columns.sex])
  .where(census.columns.state.in_(['Texas', 'New York']))
```

###using and, or, not
```sql
-- SQL :
SELECT * FROM census
WHERE state = 'California' AND NOT sex = 'M'

-- SQLAlchemy :
db.select([census])
  .where(db.and_(census.columns.state == 'California', census.columns.sex != 'M'))
```

###using order by
```sql
-- SQL :
SELECT * FROM census
ORDER BY State DESC, pop2000

-- SQLAlchemy :
db.select([census]).order_by(db.desc(census.columns.state), census.columns.pop2000)
```

###using function
```sql
-- SQL :
SELECT SUM(pop2008)
FROM census

-- SQLAlchemy :
-- avg, count, min, max…
db.select([db.func.sum(census.columns.pop2008)])
```

###using group by
```sql
-- SQL :
SELECT SUM(pop2008) as pop2008, sex
FROM census
-- SQLAlchemy :
db.select([db.func.sum(census.columns.pop2008).label('pop2008'), census.columns.sex]).group_by(census.columns.sex)
```

###using distinct
```sql
-- SQL :
SELECT DISTINCT state
FROM census
-- SQLAlchemy :
db.select([census.columns.state.distinct()])
```

###using .scalar to the result when the result contains only single value
```python
result = connection.execute(query).scalar()
print(result)
# 51.09467432293413
```

###with_entities vs load_only
```python
>>> query = User.query
>>> query.options(load_only('email', 'id')).all()
# result in creation of an object (a Model instance)
[<User 1 using e-mail: n@d.com>, <User 2 using e-mail: n@d.org>]
>>> query.with_entities(User.email, User.id).all()
# tuples with values of chosen columns
[('n@d.org', 1), ('n@d.com', 2)]
```
[source](https://towardsdatascience.com/sqlalchemy-python-tutorial-79a577141a91)
