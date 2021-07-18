- Performance: Ruby 3 is supposedly 3 times faster than Ruby 2

- Parallel Computing: Ruby 3 now supports parallel computing with the help of Ractors

- Type Checking: Ruby 3 introduces RBS, a gem that allows parsing and processing type definitions written in it

- Scheduler: An experimental scheduler is bundled with Ruby 3 to intercept blocking operations and defer them to other threads.

- Rightward assignment statements: As mentioned by Matz himself, the addition of rightward assignment statements is a small yet crucial change in the way syntax is formulated for Ruby code. This finally allows writing natural-looking code in places where left assignment looks weird.

- Better Garbage Collection: With the addition of Garbage Compactor, most objects will automatically be transferred to the heap and compacted to improve memory usage and performance.