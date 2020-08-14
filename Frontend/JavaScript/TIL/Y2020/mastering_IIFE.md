[mastering-immediately-invoked-function-expressions](https://medium.com/@vvkchandra/essential-javascript-mastering-immediately-invoked-function-expressions-67791338ddc6)

[immediate-invoke-function](https://flaviocopes.com/javascript-iife/#:~:text=An%20Immediately%2Dinvoked%20Function%20Expression,way%20to%20isolate%20variables%20declarations)

```html
  -> When to Use an IIFE?
  The most common use cases for IIFEs are:
  - Aliasing global variables
  - Creating private variables and functions
  - Asynchronous functions in loops
```

1. IIFE and private variables
  - any variables defined inside IIFE are not visiable outside the world
  - example:

  ```js
    (function IIFE_initGame() {
      // private variables that no one has access to outside this IIFE
      var lives;
      var weapons;

      init();

      // private function that no one has access to outside this IIFE
      function init() {
        lives = 5;
        weapons= 10;
      }
    }());
  ```

2. IIFEs with return value
  - example:

  ```js
    var result = (function() {
      return "from IIFE";
    }());
    alert(result);
  ```

  ```js
    var result = (function() {
      function test() {
        console.log('test')
      }
      return {
        TEST: 1,
        test
      }
    }());
    //> result
    //> {TEST: 1, test: ƒ}
    alert(result.test())
  ````

3. IIFE with parameters
  - example:

  ```js
    (function IIFE(msg, times) {
      for(var i = 1; i <= times; i++) {
        console.log(msg)
      }
    }("Hello!", 5));
  ```

  - this is really powerful pattern and see it often in Jquery code
  and in other lib as well

  ```js
    (function($, global, document) {
      // use $ for jQuery, global for window
    }(jQuery, window, document));
  ```
