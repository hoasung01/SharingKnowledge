```ruby
    mysql -p -u[user] [database] < db_backup.dump

    - but in case the db_backup quite large (5GB for ex)
      and encounter an issue `MySQL server gone away`
      then we use another way

    $ mysql -u username -p database
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 2933685
    --8<-- snip --8<--

    mysql> source location/to/your/dump.sql

    - it still has same issue but it keep the connection and try reconnecting
    and restore it until the end
```