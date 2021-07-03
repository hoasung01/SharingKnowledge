```sql
SELECT [select_option]
{select_expression}
[
  FROM
    JOIN
    ON
    WHERE
    GROUP BY
    HAVING
    ORDER BY
    LIMIT
    INTO
]
```


```html
[GROUP BY]:
  - Used alongside aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the results.
```


```json_extract
###unpack hash value
answer: {'value': 3}

SELECT json_extract(answer, '$.value')
FROM tables

-- result: 3
```

[source](https://towardsdatascience.com/sql-practical-details-cheat-sheet-for-data-analysis-f98406a71a09)