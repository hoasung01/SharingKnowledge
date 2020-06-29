```html
  srcset: defines a set of images we will allow the browser to
    choose btw, and what size image is

  ex:
    <img srcset="small.jpg 500w, medium.jpg 1000w, large.jpg 2000w" src="..." alt="">
    - tells the browser to display the small, medium or large .jpg graphic
    depending on the client's resolution.
    - for the device width of 320px, the following calculations are made

    ```
      500 / 320 = 1.5625
      1000 / 320 = 3.125
      2000 / 320 = 6.25
    ```

    - if the client's resoluton is 1x, 1.5625 is closest, and 500w corresponding
    to small.jpg will be selected by the browser.
```


[srcset-image](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images)