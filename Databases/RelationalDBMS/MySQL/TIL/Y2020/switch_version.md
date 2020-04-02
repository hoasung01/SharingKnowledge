```html
    [source:](https://jeanleem6.github.io/2019/05/08/Multiple-MySQL-Versions-with-Homebrew/)


    # Unlink current mysql version
    brew unlink mysql

    # Check older mysql version
    ls /usr/local/Cellar/mysql@5.6 # => 5.6.43

    # Link the older version
    brew switch mysql@5.6 5.6.43
    # If the above didn't working, try this:
    brew link mysql@5.6 --force

    And to switch back to the current version.

    # Unlink older mysql version
    brew unlink mysql@5.6

    # Check current mysql version
    ls /usr/local/Cellar/mysql # => 8.0.16

    # Link the current version
    brew switch mysql 8.0.16
```