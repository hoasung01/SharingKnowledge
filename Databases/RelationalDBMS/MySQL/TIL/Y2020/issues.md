```html
(1055, "Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'ebdb.analytics_analyticschatvisualcreativesummary.id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by")
```

- will be simply solved by changing the sql mode in MySQL by this command,

```sql
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
```