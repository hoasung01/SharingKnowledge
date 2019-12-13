### ps: process status
### ps aux

```ruby
a = show processes for all users
u = display the process's user/owner
x = also show processes not attached to a terminal
```

### grep: globally search a regular expression and print

```ruby
 ps aux | grep rails
```

### lsof: list open files ( is used to find out which files are open by which process )

```ruby
  # find process running on specific port
  lsof -i TCP:22
```

### killing daemon process

```ruby
  kill -TERM PID
```