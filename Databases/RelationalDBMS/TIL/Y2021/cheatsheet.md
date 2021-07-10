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

```sql
-- json_extract
-- unpack hash value
-- answer: {'value': 3}

SELECT json_extract(answer, '$.value')
FROM tables

-- result: 3
```

```sql
SELECT COALESCE(NULL,NULL,'ByteScout',NULL,'Byte')
-- return the first non-null expression
-- ByteScout
```

- Common Table Expressions (CTEs):  to modularize and break down your code
```sql
-- without using CTE
SELECT name
       , salary
FROM People
WHERE name in (SELECT DISTINCT name
               FROM population
               WHERE country = "Canada"
                     AND city = "Toronto")
      AND salary >= (SELECT AVG(salary)
                     FROM salaries
                     WHERE gender = "Female")

-- using CTE
with toronto_ppl as (
   SELECT DISTINCT name
   FROM population
   WHERE country = "Canada"
         AND city = "Toronto"
)
, avg_female_salary as (
   SELECT AVG(salary) as avgSalary
   FROM salaries
   WHERE gender = "Female"
)

SELECT name
       , salary
FROM People
WHERE name in (SELECT DISTINCT FROM toronto_ppl)
      AND salary >= (SELECT avgSalary FROM avg_female_salary)
```

- Temporary Functions:
 + It allows you to break down chunks of code into smaller chunks of code
 + It’s useful for writing cleaner code
 + It prevents repetition and allows you to reuses code similar to using functions in Python.
```sql
-- without using temporary function
SELECT name
       , CASE WHEN tenure < 1 THEN "analyst"
              WHEN tenure BETWEEN 1 and 3 THEN "associate"
              WHEN tenure BETWEEN 3 and 5 THEN "senior"
              WHEN tenure > 5 THEN "vp"
              ELSE "n/a"
         END AS seniority
FROM employees

-- using temporary function
CREATE TEMPORARY FUNCTION get_seniority(tenure INT64) AS (
   CASE WHEN tenure < 1 THEN "analyst"
        WHEN tenure BETWEEN 1 and 3 THEN "associate"
        WHEN tenure BETWEEN 3 and 5 THEN "senior"
        WHEN tenure > 5 THEN "vp"
        ELSE "n/a"
   END
);
SELECT name
       , get_seniority(tenure) as seniority
FROM employees
```

```sql
-- using case when statement
SELECT  first_name, last_name, grade,
  (CASE
   WHEN grade > 90 THEN 'A'
   WHEN grade > 80 AND grade <= 90 THEN 'B'
   WHEN grade > 70 AND grade <= 80 THEN 'C'
   WHEN grade > 60 AND grade <= 70 THEN 'D'
   ELSE 'F'
  END) letter_grade
FROM students
```


[source](https://towardsdatascience.com/sql-practical-details-cheat-sheet-for-data-analysis-f98406a71a09)
