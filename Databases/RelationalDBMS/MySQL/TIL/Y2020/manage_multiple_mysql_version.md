`[source from](https://gist.github.com/benlinton/d24471729ed6c2ace731)`

```html
   Using Homebrew
   Disclaimer: Your milage may vary, I've updated this gist based on comments below but haven't tested it myself since switching to Docker. Please see comments below and/or gist history for additional details.

   I was using homebrew version 0.9.5 when writing this gist.

   brew -v # => Homebrew 0.9.5
   Install the current version of mysql.

   # Install current mysql version
   brew install mysql

   # Start agent for current version of mysql
   brew services start mysql
   Install the older version of mysql.

   # Install older mysql version
   brew install mysql@5.6

   # Start agent for older version of mysql
   brew services stop mysql
   brew services start mysql56
   Then to switch to the older version.

   # Unlink current mysql version
   brew unlink mysql

   # Check older mysql version
   ls /usr/local/Cellar/mysql56 # => 5.6.27

   # Link the older versionbrew switch mysql@5.6
   brew switch mysql@5.6 5.6.27
   And to switch back to the current version.

   # Unlink older mysql version
   brew unlink mysql56

   # Check current mysql version
   ls /usr/local/Cellar/mysql # => 5.7.10

   # Link the current version
     5.7.10
   To verify which mysql version you're on at any time.

   # Check which version of mysql is currently symlinked
   ls -l /usr/local/bin/mysql # => /usr/local/bin/mysql@ -> ../Cellar/mysql56/5.6.27/bin/mysql

   # Or using the mysql command
   mysql --version
```