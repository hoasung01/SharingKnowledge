```html
  ### 6 ways to declare javascript functions

  1. function declaration

    ```javascript
      function name(parameters){
        statements
      }
    ```

    ```javascript
      function isEven(num) {
        return num % 2 === 0;
      }
      isEven(24) // => true
      isEven(11) // => false
    ```

    - when using function declaration, the function definition is hoisted,
    thus the function to be used before it defined

    - example:

    ```javascript
      // Parse-Time function declaration
      bar(); // Call bar function here, It will not give an Error
      function bar() {
        console.log("Hi I am inside Foo");
      }
    ```

  2. function expression

    ```javascript
      let name = function(parameters){
        statements
      }
    ````

    - this function is not hoisted, and therefore cannot be used before
    they are defined

    - example

    ```javascript
      // Run-Time function declaration
      foo(); // Call foo function here, It will give an error
      var foo = function() {
        console.log("Hi I am inside Foo");
      };
    ```

  3. shorthand method definition

  4. arrow function

    ```javascript
      let name = (parameters) => {
        statements
      }
    ``

    - this is a shorter syntax for writing function expression.
      Arrow function do not create their own this value

  5. generator function

  6. one more thing: new Function

  7. immediately-invoked Function Expression (IIFE)
    // That is saying execute immediately.
    - usage:
      The function becomes a function expression which is immediately executed.
      The variable within the expression can not be accessed from outside it.

    - syntax:
    ```javascript
      (function () {
        // code here
      })();

      // defined as arrow function
      (() => {
        /* */
      })()
    ```

    - sample:

    ```js
      (function () {
        var aName = "Barry";
      })();
      // Variable aName is not accessible from the outside scope
      aName // throws "Uncaught ReferenceError: aName is not defined"
    ```
    - noted: (Alternative syntax using unary operators)
      (does not work with arrow functions)

    ```js
      -(function() {
        /* */
      })()

      +(function() {
        /* */
      })()

      ~(function() {
        /* */
      })()

      !(function() {
        /* */
      })()
    ```

```

[source](https://dmitripavlutin.com/6-ways-to-declare-javascript-functions/)


```html
  ### exmple the difference btw funciton expression and declaration

  // function expression
  var foo = function() {
    // Some code
  }

  // function declaration
  function bar () {
    // Some code
  }

  // Run-Time function declaration
  foo(); // Call foo function here, It will give an error
  var foo = function() {
    console.log("Hi I am inside Foo");
  };

  // Parse-Time function declaration
  bar(); // Call bar function here, It will not give an Error
  function bar() {
    console.log("Hi I am inside Foo");
  }
```