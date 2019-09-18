```ruby
kill -9 $(ps aux | grep 'rails s' | awk {'print$2'}); rails s
```