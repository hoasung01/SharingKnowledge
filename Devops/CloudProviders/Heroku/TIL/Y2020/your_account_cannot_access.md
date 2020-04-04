```ruby
    ( assumes that you have logged with different account before )
    issue:
        remote: !   Your account <abc> does not have access to <abc-app>.
    fixed:
      heroku auth:logout
      heroku auth:login
```