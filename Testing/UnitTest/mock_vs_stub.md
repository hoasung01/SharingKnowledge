###stub

```html
  Returns canned responses, avoiding any meaningful computation or I/O

  allow(some_object).to receive(some_method).and_return(some_value)
```

###mock

```html
  Expects specific messages; will raise an error if it doesn’t receive
  them by the end of the example

  expect(some_object).to receive(some_method).and_return(some_value)
```

```html
  Mock test là khái niệm dùng để chỉ rằng, thay vì lấy data từ một real
  service, bạn sử dụng một bộ test data mà input và output của bạn được
  định nghĩa rõ ràng từ một service giả khác (mock) và bạn dùng nó như
  là input cho cái system mà bạn muốn test
```


###fake