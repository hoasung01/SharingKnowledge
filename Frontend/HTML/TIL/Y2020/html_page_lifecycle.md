```html
  The lifecycle of an HTML page has tree important events:

  1. DOMContentLoaded:
    - the browser fully loaded HTML, and the DOM tree is built,
    but external resources like pictures and stylesheets may not
    yet loaded
  2. load
    - not only HTML loaded, but also the external resources:
    images, styles, etc...
  3. beforeunload/unload
    - the user leaving the page
```

[html_lifecycle](https://javascript.info/onload-ondomcontentloaded)