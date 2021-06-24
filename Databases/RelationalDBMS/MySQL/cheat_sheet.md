```html
- access to mysql console
$ mysql -uroot -p
```


```html
  mysql> SHOW DATABASES;
  mysql> CREATE DATABASE database_name;
```

```html
  - create a new user:

  mysql > CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
  mysql > GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
  mysql > FLUSH PRIVILEGES;
```

```html
  - show users:

  mysql> select host, user  from mysql.user;
```

```html
  - show status:

  mysql> status
```

```html
  - List grants for a mysql user
  mysql> SHOW GRANTS FOR 'root'@'localhost';
```

```html
  - Remove/Delete the user from the user table
  mysql> DROP USER 'bloguser'@'localhost';
```