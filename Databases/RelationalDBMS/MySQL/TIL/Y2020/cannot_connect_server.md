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
```