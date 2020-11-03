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

```html
client: { x: evt.clientX, y: evt.clientY }, // relative to the viewport
screen: { x: evt.screenX, y: evt.screenY }, // relative to the physical screen
offset: { x: offsetX,     y: offsetY },     // relative to the event target
page:   { x: pageX,       y: pageY }        // relative to the html document
```