```python
"""Construct database queries from SQLAlchemy sessions."""
from .database import session
from .models import Customer


# Example structure of an ORM query
records = session
    .query(Customer)
    .FUNCTION()
# Calling .query(Customer) on our session isn't a valid query until we
# add one more method to the chain.
```

###Understand .get, .first and .scalar
```python
# Bad
Product.query.filter(Product.id == 1234).first()

# Good
Product.query.get(1234)

# .first applies a LIMIT 1 to the query, and returns the single row.
# .scalar fetches all rows matching the query, and throws an exception if the query finds more than one row.
# .one works like scalar, except that it throws an exception if the query finds zero rows.
```

###Fetch only the needed columns

```python
# Fetching only Product and the name of the city the product is located in

Product
    .query
    .outerjoin(Product.city)
    .with_entities(Product, City.name)
```

```python
query.join(Address, User.id==Address.user_id)    # explicit condition
query.join(User.addresses)                       # specify relationship from left to right
query.join(Address, User.addresses)              # same, with explicit target
query.join('addresses')                          # same, using a string”
```

###select_from
```html
Query.select_from() is often used in conjunction with Query.join() in order to control which entity is selected from on the “left” side of the join.
```

```python
q = session.query(Address).select_from(User).\
    join(User.addresses).\
    filter(User.name == 'ed')
# Which produces SQL equivalent to:

SELECT address.* FROM user
JOIN address ON user.id=address.user_id
WHERE user.name = :name_1
```

###Using a Hybrid
- The hybrid provides for an expression that works at both the Python level as well as at the SQL expression level

```python
from sqlalchemy.ext.hybrid import hybrid_property

class User(Base):
    __tablename__ = 'user'
    id = Column(Integer, primary_key=True)
    firstname = Column(String(50))
    lastname = Column(String(50))

    @hybrid_property
    def fullname(self):
        return self.firstname + " " + self.lastname

#Usage:
some_user = session.query(User).first()
print(some_user.fullname)

some_user = session.query(User).filter(User.fullname == "John Smith").first()
```




