```html
  vì ajax nó ko có cho user chọn chỗ lưu file, trừ khi xài thư viện
```

###solution

```js
$.post("{% url 'app:conversion_export' app=app %}", data, function(response, status, xhr) {
    var disposition = xhr.getResponseHeader('content-disposition');
    var file_name = disposition.match(/filename="(.+)"/)[1];
    var content_type = xhr.getResponseHeader('content-type');
    var blob = new Blob([response], { type: content_type });
    var link = document.createElement('a');

    link.href = window.URL.createObjectURL(blob);
    link.download = file_name;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
})
```