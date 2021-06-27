```html
- is a  expression that allows to unpack values from arrays, or properties from objects,
  into distinct variables data can be extracted from arrays, objects, nested objects and assigning to variables
```
###example


1. Array destructuring

```js
var x, y;
[x, y] = [10, 20];
console.log(x); // 10
console.log(y); // 20
```

```js
[x, y, ...restof] = [10, 20, 30, 40, 50];
console.log(x); // 10
console.log(y); // 20
console.log(restof); // [30, 40, 50]
```

2. Object destructuring

```js
({ x, y} = { x: 10, y: 20 });
console.log(x); // 10
console.log(y); // 20
```

```js
({x, y, ...restof} = {x: 10, y: 20, m: 30, n: 40});
console.log(x); // 10
console.log(y); // 20
console.log(restof); // {m: 30, n: 40}
```


[source](https://www.geeksforgeeks.org/destructuring-assignment-in-javascript/#:~:text=Destructuring%20Assignment%20is%20a%20JavaScript,objects%20and%20assigning%20to%20variables.)