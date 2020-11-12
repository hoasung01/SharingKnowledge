```html
1. == operator converts the variable values to the same type before
  performing comparison. This is called type coercion.
2. === operator does not do any type conversion (coercion) and returns
  true only if both values and types are identical for the two variables being compared.
```

###example:

```js
var one = 1;
var one_again = 1;
var one_string = "1";  // note: this is string

console.log(one ==  one_again);  // true
console.log(one === one_again);  // true
console.log(one ==  one_string); // true. See below for explanation.
console.log(one === one_string); // false. See below for explanation.
```

[source](https://codeahoy.com/javascript/2019/10/12/==-vs-===-in-javascript/)