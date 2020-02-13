```html
    N+1 query là một truy vấn không hiệu quả do sử dụng quá
    nhiều truy vấn.

    Comment.limit(5).each do |comment|
        comment.user
    end

    Sử dụng 1 truy vấn để lấy ra 5 comment đầu tiên.
    Và dùng 5 truy vấn để lấy ra user của những comment đó.
    Đó gọi là n+1 query.
```