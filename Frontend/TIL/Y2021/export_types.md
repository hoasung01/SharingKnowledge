There are 4 kinds of exports:
1. named exports (several per module)
2. default exports (one per module)
3. Mixed named & default exports
4. Cyclical Dependencies


###Named exports (several per module)
```js
//------ lib.js ------
export const sqrt = Math.sqrt;
export function square(x) {
    return x * x;
}
export function diag(x, y) {
    return sqrt(square(x) + square(y));
}

//------ main.js ------
import { square, diag } from 'lib';
console.log(square(11)); // 121
console.log(diag(4, 3)); // 5

// Other way
//------ main.js ------
import * as lib from 'lib';
console.log(lib.square(11)); // 121
console.log(lib.diag(4, 3)); // 5
```

###Default exports (one per module)

```js
export default class DefaultExport1 { }

// Import class
import DefaultExport1 from 'path-to-file' // No curly braces - {}

// You can use a different name for the default import
import Foo from 'path-to-file' // This will assign any default export to Foo.
```

###Mixed named & default exports

```js
//------ underscore.js ------
export default function (obj) {
    ...
};
export function each(obj, iterator, context) {
    ...
}
export { each as forEach };

//------ main.js ------
import _, { each } from 'underscore';
...
```

###Cyclical Dependencies

```js
// lib.js
import Main from 'main';
var lib = {message: "This Is A Lib"};
export { lib as Lib };

// main.js
import { Lib } from 'lib';
export default class Main {
  // ....
}
```

[source](https://2ality.com/2014/09/es6-modules-final.html)