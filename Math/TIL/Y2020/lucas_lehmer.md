We can test if a Mersenne number is prime using the [Lucas-Lehmer test.](https://en.wikipedia.org/wiki/Lucas%E2%80%93Lehmer_primality_test)


```python
def lucas_lehmer(p):
  s = [4]
  m = (2 ** p) - 1

  if p > 2:
    for i in range(1, p-1):
      a = (s[i-1] ** 2 - 2) % m
      s.append(a)
  return s
```