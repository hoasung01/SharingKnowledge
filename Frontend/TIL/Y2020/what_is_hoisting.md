```html
    Trong JavaScript, hoisting là việc đưa các khai báo biến lên
    phần đầu tiên của phạm vi mà biến được sử dụng.

    Ví dụ khi bạn khai báo và sử dụng biến myNumber như sau:

    myNumber = 20
    alert(myNumber);
    var myNumber;

    Thì khi biên dịch đoạn mã trên, chương trình xử lý JavaScript
    sẽ viết lại chúng thành như sau:

    var myNumber;
    myNumber = 20;
    alert(myNumber);
```