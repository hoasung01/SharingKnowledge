[Benchmarking Ruby code](https://blog.appsignal.com/2018/02/27/benchmarking-ruby-code.html)

```ruby
  # Benchmark.measure

  require 'benchmark'

  input = ('a'..'z').map { |letter| [letter, letter] }.to_h

  puts Benchmark.measure {
    50_000.times do
      input.map { |key, value| [key.to_sym, value] }.to_h
    end
  }

  # $ ruby bench.rb
  # 0.810000   0.000000   0.810000 (0.816964)

  # The report string shows four numbers, which represent the user
  # CPU time (the time spent executing your code),
  # the system CPU time (the time spent in the kernel),
  # both user and system CPU time added up, and the actual time
  # (or wall clock time) it took for the block to execute in brackets.


  # While that’s an impressive number, we don’t know what
  # that means unless we compare it to another implementation of the code.

  # => so we use another method below
```


```ruby
  # Benchmark.bm
  # Besides Benchmark.measure, Ruby provides Benchmark.bm,
  # which can run multiple code samples and print their results.

  require 'benchmark'

  input = ("a".."z").map { |letter| [letter, letter] }.to_h
  n = 50_000

  Benchmark.bm do |benchmark|
    benchmark.report("Hash[]") do
      n.times do
        input.map { |key, value| [key.to_sym, value] }.to_h
      end
    end

    benchmark.report("{}.tap") do
      n.times do
        {}.tap do |new_hash|
          input.each do |key, value|
            new_hash[key.to_sym] = value
          end
        end
      end
    end
  end


  # $ ruby bench.rb
  #        user     system      total        real
  # Hash[]  0.850000   0.000000   0.850000 (  0.851106)
  # {}.tap  0.610000   0.020000   0.630000 (  0.637070)
```
