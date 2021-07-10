###Example
```python
class Product(Base):
    # __tablename__ tells SQLAlchemy that rows of the products table must be mapped to this class.
    __tablename__ = 'products'
    id=Column(Integer, primary_key=True)
    title=Column('title', String(32))
    in_stock=Column('in_stock', Boolean)
    quantity=Column('quantity', Integer)
    price=Column('price', Numeric)
```

