```html
  - The setstate is asynchronous
```


```js
handleClick(event) {
    let listid = Number(event.target.id); // ex: listid: 4

    this.setState(
        { currentPage: listid }, () => console.log('check callback==', this.state.currentPage) // currentPage here is 4
    );

    this.setState({currentPage: listid}) // currentPage is still 3, not 4

    // fixed
    this.setState({
        currentPage: this.state.currentPage = listid  // currentPage is 4 same as listid
    });
}
```