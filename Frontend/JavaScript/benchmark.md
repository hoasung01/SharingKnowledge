###How long does it take to perform a for-loop 100.000 times:
```js
console.time();
for (i = 0; i < 100000; i++) {
  // some code
}
console.timeEnd();
```