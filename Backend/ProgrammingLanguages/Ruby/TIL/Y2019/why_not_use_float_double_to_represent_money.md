[why not use float and double to represent for money](https://stackoverflow.com/questions/3730019/why-not-use-double-or-float-to-represent-currency)


```ruby
http://blog.plataformatec.com.br/2014/09/floating-point-and-currency/

0.1 + 0.02 == 0.12
 # => false ( why? )
(0.1 + 0.02) + 0.3 == 0.1 + (0.02 + 0.3)
# => false ( why? )

0.1 + 0.02
 # => 0.12000000000000001
  0.12
 # => 0.12
```