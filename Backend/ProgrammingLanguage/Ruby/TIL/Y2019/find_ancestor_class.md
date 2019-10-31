### If you want the full ancestor stack try:

```ruby
object.class.ancestors
```

### For instance:

```ruby
> a = Array.new
=> []
> a.class.ancestors
=> [Array, Enumerable, Object, Kernel, BasicObject]

```