```html
(1055, "Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'vsdb.shipping_hours.id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by")
```

```sql
DELETE
FROM table_A
WHERE id IN (
SELECT id
FROM(
     SELECT id
     FROM table_A
     WHERE JSON_CONTAINS(settings, '{"from": "16:00","to":"18:00"}')
     GROUP BY oid
     HAVING count(*) > 1
 ) as t
)
```

###fixed by adding ANY_VALUE to id

```sql
DELETE
FROM table_A
WHERE id IN (
SELECT id
FROM(
     SELECT ANY_VALUE(id)
     FROM table_A
     WHERE JSON_CONTAINS(settings, '{"from": "16:00","to":"18:00"}')
     GROUP BY oid
     HAVING count(*) > 1
 ) as t
)
```