### definition

```javascript
  Babel is a toolchain that is mainly used to convert ECMAScript 2015+ code
  into a backwards compatible version of JavaScript in current and
  older browsers or environments. Here are the main things Babel can do for you:

  - Transform syntax
  - Polyfill features that are missing in your target environment (through @babel/polyfill)
  - Source code transformations (codemods)
```


#### Examples

```javascript
  // Babel Input: ES2015 arrow function
  [1, 2, 3].map((n) => n + 1);

  // Babel Output: ES5 equivalent
  [1, 2, 3].map(function(n) {
    return n + 1;
  });
```