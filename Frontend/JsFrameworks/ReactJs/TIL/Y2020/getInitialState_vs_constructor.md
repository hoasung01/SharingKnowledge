```js
// using ES6 classes
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = { /* initial state */ };
  }
}
```

is equivalent to


```js
var MyComponent = React.createClass({
  getInitialState() {
    return { /* initial state */ };
  },
});
```