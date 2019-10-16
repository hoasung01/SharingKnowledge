## what is it?
```ruby
  - RxJs ( Reactive extension JS)
  - là một thư viện xử lý bất đồng bộ (asynchronous)
```

## Các Concepts nền tảng của Rxjs bao gồm:

```ruby
  - Observable:
      đại diện cho khái niệm về một tập hợp các giá trị hoặc các sự kiện trong tương lai.
      Khi các giá trị hoặc sự kiện phát sinh trong tương lai,
      Observable sẽ điều phối nó đến Observer.
  - Observer:
      là một tập hợp các callbacks tương ứng cho việc lắng nghe
      các giá trị (next, error, hay complete) được gửi đến bởi Observable.
  - Subscription:
      là kết quả có được sau khi thực hiện một Observable,
      nó thường dùng cho việc hủy việc tiếp tục xử lý.
  - Operators:
      là các pure functions cho phép lập trình functional với Observable.
  - Subject:
      để thực hiện việc gửi dữ liệu đến nhiều Observers (multicasting).
  - Schedulers:
      một scheduler sẽ điều khiển khi nào một subscription bắt đầu thực thi,
      và khi nào sẽ gửi tín hiệu đi.
```