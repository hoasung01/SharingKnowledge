###functional component

```js
import React from "react";

const FunctionalComponent = () => {
 return <h1>Hello, world</h1>;
};
```

###class component

```js
import React, { Component } from "react";

class ClassComponent extends Component {
 render() {
   return <h1>Hello, world</h1>;
 }
}
```

1. Passing props

- functional component with destructuring

```js
const FunctionalComponent = ({ name }) => {
 return <h1>Hello, {name}</h1>;
};
```

- functional component without destructuring

```js
const FunctionalComponent = (props) => {
 return <h1>Hello, {props.name}</h1>;
};
```

- class component

```js
class ClassComponent extends React.Component {
  render() {
    const { name } = this.props;
    return <h1>Hello, { name }</h1>;
 }
}
```

2. Handling state

```js
const FunctionalComponent = () => {
 const [count, setCount] = React.useState(0);

 return (
   <div>
     <p>count: {count}</p>
     <button onClick={() => setCount(count + 1)}>Click</button>
   </div>
 );
};
```

```js
class ClassComponent extends React.Component {
 constructor(props) {
   super(props);
   this.state = {
     count: 0
   };
 }

 render() {
   return (
     <div>
       <p>count: {this.state.count} times</p>
       <button onClick={() => this.setState({ count: this.state.count + 1 })}>
         Click
       </button>
     </div>
   );
 }
}
```
3. Lifecycle Methods
###On Mounting (componentDidMount)

```js
const FunctionalComponent = () => {
 React.useEffect(() => {
   console.log("Hello");
 }, []);
 return <h1>Hello, World</h1>;
};
```

```js
class ClassComponent extends React.Component {
 componentDidMount() {
   console.log("Hello");
 }

 render() {
   return <h1>Hello, World</h1>;
 }
}
```

###On Unmounting (componentWillUnmount)

```js
const FunctionalComponent = () => {
 React.useEffect(() => {
   return () => {
     console.log("Bye");
   };
 }, []);
 return <h1>Bye, World</h1>;
};
```

```js
class ClassComponent extends React.Component {
 componentWillUnmount() {
   console.log("Bye");
 }

 render() {
   return <h1>Bye, World</h1>;
 }
}
```
