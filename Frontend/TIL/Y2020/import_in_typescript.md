```html
An import declaration of the form
import d from "mod";

is exactly equivalent to the import declaration
import { default as d } from "mod";
```


###example

1. base.ts
```ts
import axios from 'axios'
export default axios
```

2. other.ts

```ts
// so API here is the alias of axios
import API from '../.base'
```