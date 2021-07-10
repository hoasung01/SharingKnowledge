###relationship loading techniques
1. Eager loading
2. Lazy loading (default)


###examples:
1.
```python
#1. lazy loading
>>> membership = Membership.query.first()

# try to get username of member
>>> membership.member.username
# it makes another DB call
# That is lazy-loading relationship fields work.
# You try to retrieve data only when you need them.

#2. eager loading
>>> from sqlalchemy import orm
>>> Membership.query.options(orm.joinedload('company')).first()
# generated sql
# INFO:sqlalchemy.engine.base.Engine:SELECT membership.id AS membership_id, membership.user_id AS membership_user_id, membership.company_id AS membership_company_id, membership.role AS membership_role, company_1.id AS company_1_id, company_1.name AS company_1_name, company_1.website AS company_1_website, company_1.address AS company_1_address
# FROM membership LEFT OUTER JOIN company AS company_1 ON company_1.id = membership.company_id
#  LIMIT %(param_1)s
# INFO:sqlalchemy.engine.base.Engine:{'param_1': 1}
>>> membership.company.name
'Ade Store1'
# does not lead to any extra DB call.
```

2.

```python
class Product(db.Model):
  id = db.Column(db.Integer, primary_key=True)

class ProductImage(db.Model):
  id = db.Column(db.Integer, primary_key=True)
  product_id = db.Column(db.Integer, db.ForeignKey(Product.id), nullable=False)

# To render a list of 50 products with their images, we’ll use a query similar to this:
[(p, p.images) for p in Product.query.limit(50)]
```

```html
Loading strategy   |Number of queries| Time
------------------------------------------------------------
default (lazyload)  51                71.6 ms ± 7.16 ms
subqueryload        2                 15.1 ms ± 1.32 ms
joinedload          1                 37 ms ± 1.98 ms
selectinload        2                 12.7 ms ± 1.54 ms
```


