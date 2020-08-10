```html
  - connect to database
  psql <database_name>
```
```html
  - get a help from command line

  psql> \h CREATE INDEX

  - example
  ➜  DatabaseProjects git:(master) ✗ psql book
  psql (12.2)
  Type "help" for help.

  book=# \h
  book=# \h create index
  Command:     CREATE INDEX
  Description: define a new index
  Syntax:
  CREATE [ UNIQUE ] INDEX [ CONCURRENTLY ] [ [ IF NOT EXISTS ] name ] ON [ ONLY ] table_name [ USING method ]
      ( { column_name | ( expression ) } [ COLLATE collation ] [ opclass ] [ ASC | DESC ] [ NULLS { FIRST | LAST } ] [, ...] )
      [ INCLUDE ( column_name [, ...] ) ]
      [ WITH ( storage_parameter = value [, ... ] ) ]
      [ TABLESPACE tablespace_name ]
      [ WHERE predicate ]

  URL: https://www.postgresql.org/docs/12/sql-createindex.html
```