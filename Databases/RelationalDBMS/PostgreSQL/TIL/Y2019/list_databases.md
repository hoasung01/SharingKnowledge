```ruby
$ psql -l
                         List of databases
   Name    | Owner | Encoding | Collate | Ctype | Access privileges
-----------+-------+----------+---------+-------+-------------------
 postgres  | macos | UTF8     | C       | C     |
 template0 | macos | UTF8     | C       | C     | =c/macos         +
           |       |          |         |       | macos=CTc/macos
 template1 | macos | UTF8     | C       | C     | =c/macos         +
           |       |          |         |       | macos=CTc/macos
(3 rows)
```