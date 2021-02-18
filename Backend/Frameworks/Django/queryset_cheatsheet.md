[django-database-optimization-tips](https://medium.com/better-programming/django-database-optimization-tips-4e11631dbc2c)

###order_by(*fields)
```python
  Entry.objects.filter(pub_date__year=2005).order_by('-pub_date', 'headline')
  # The result above will be ordered by pub_date descending, then by headline ascending

  # The negative sign: indicates descending order
  # Ascending order is implied

  # Order randomly, use "?"
  Entry.objects.order_by('?')
```