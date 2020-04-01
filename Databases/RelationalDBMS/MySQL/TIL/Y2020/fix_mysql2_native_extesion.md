```html
    1. Installing mysql2 0.3.21 (was 0.5.3) with native extensions
    Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    - fixed:

    gem install mysql2 -v 'x.x.x' -- --with-mysql-config=/usr/local/Cellar/mysql/y.y.y/bin/mysql_config

    - how to find mysql path:
    brew info mysql@5.6 (for ex)

    2.: There was an error while trying to load the gem 'mysql2'. (Bundler::GemRequireError)
    Gem Load Error is: Incorrect MySQL client library version! This gem was compiled for 5.6.47 but the client library is 8.0.19.

    - fixed: ( added prefix ARCHFLAGS="-arch x86_64" )
    ARCHFLAGS="-arch x86_64" gem install mysql2 -v 0.3.21 -- –with-mysql-config=/usr/local/bin/mysql_config

```