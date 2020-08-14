| Mounting                   | Updating                   | Unmounting           |
| -------------------------- | -------------------------- | -------------------- |
| constructor()              |getDerivedStateFromProps()  |componentWillUnmount()|
| getDerivedStateFromProps() |shouldComponentUpdate()     |                      |
| render()                   |render()                    |                      |
| componentDidMount()        |getSnapshotBeforeUpdate()   |                      |
|                            |componentDidUpdate()        |                      |


```html
  1. Mouting:
    - this is a phase when the component is about to start its life
    journey and be added to the DOM

  2. Updating:
    - Once the component gets added to DOM, it can potentially update
    and re-render only when a props or state change occurs. That happens
    only in this phase

  3. Unmounting:
    - This is a final phase of a component's life cycle in which component
    is destroyed and removed from the DOM
```

![life_cycle](../../Assets/life_cycle.png "life_cycle")