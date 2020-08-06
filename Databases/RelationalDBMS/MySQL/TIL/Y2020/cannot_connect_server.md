```html
    mysql -u root
    ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)


    - fixed:

    I solved this by doing the following:

    First uninstall mysql

    brew uninstall mysql@5.6
    Delete the folders/files that were not removed

    rm -rf /usr/local/var/mysql
    rm /usr/local/etc/my.cnf
    Reinstall mysql and link it

    brew install mysql@5.6
    brew link --force mysql@5.6
    Enable and start the service

    brew services start mysql@5.6

    - fixed:
        mysqld --initialize
```

```html
    "Access denied for user 'root'@'localhost' (using password: NO)"
```

```html
    ERROR 1819 (HY000): Your password does not satisfy the current policy requirements

    -> fixed:

    mysql> SHOW VARIABLES LIKE 'validate_password%';
    mysql> set global validate_password_policy = 0;
```

```html
    - mysql@5.7
    (2013, "Lost connection to MySQL server at 'reading initial communication packet', system error: 0")

    - fixed

    resolved by editting my.cnf as following:

    [mysqld]
    max_allowed_packet=64M
    connect_timeout=60
    table_open_cache=900

    - ref: https://github.com/brianmario/mysql2/issues/1000
```