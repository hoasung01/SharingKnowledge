```ruby
[1] pry(main)> class Account
[1] pry(main)*   def initialize(*args)
[1] pry(main)*     pp(args)
[1] pry(main)*   end
[1] pry(main)* end
=> :initialize
[2] pry(main)> class User < Account
[2] pry(main)*   def initialize(a, b)
[2] pry(main)*     super()
[2] pry(main)*   end
[2] pry(main)* end
=> :initialize
[3] pry(main)> class Guest < Account
[3] pry(main)*   def initialize(a, b)
[3] pry(main)*     super
[3] pry(main)*   end
[3] pry(main)* end
=> :initialize
[4] pry(main)> User.new(1, 2)
[]
=> #<User:0x00005621248cfcf8>
[5] pry(main)> Guest.new(1, 2)
[1, 2]
=> #<Guest:0x00005621248fb650>

super - sends all arguments
super() - no arguments
```