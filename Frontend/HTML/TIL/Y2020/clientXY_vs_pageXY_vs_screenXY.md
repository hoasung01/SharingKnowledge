```html
- [pageX/Y] gives the coordinates relative to the <html> element in CSS pixels.
- [clientX/Y] gives the coordinates relative to the viewport in CSS pixels.
- [screenX/Y] gives the coordinates relative to the screen in device pixels.
- [offsetX/offsetY] gives the coordinates relative to the target element.
```

```js
document.addEventListener('click', function(e) {
  console.log(
    'page: ' + e.pageX + ',' + e.pageY,
    'client: ' + e.clientX + ',' + e.clientY,
    'screen: ' + e.screenX + ',' + e.screenY)
}, false);
```