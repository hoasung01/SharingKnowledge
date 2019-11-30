```ruby
  class MyClass
    def method_one
      puts 'instance method called'
    end

    private

    def private_one
      puts 'private method called'
    end
  end
```

```ruby
  my_obj = Myclass.new
  my_obj.method_one  #=> "instance method called."
  my_obj.private_one   #=> NoMethodError: private method `private_one' called for #<Myclass:0xb739d9bc>
  my_obj.send(:private_one)  #=> "private method called."
```