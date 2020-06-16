```ruby
1. Install Homebrew `brew install postgres`
2. `initdb /usr/local/var/postgres`
3. /usr/local/Cellar/postgresql/<version>/bin/createuser -s postgres or
   /usr/local/opt/postgres/bin/createuser -s postgres which will just use the latest version.
```

```html
   - doing purely via psql

   CREATE DATABASE yourdbname;
   CREATE USER youruser WITH ENCRYPTED PASSWORD 'yourpass';
   GRANT ALL PRIVILEGES ON DATABASE yourdbname TO youruser;
```