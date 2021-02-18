```js
class ConversionReportWrapper extends React.Component {
  callBack(data_callback) {
    this.setState({
      filter_conditions: data_callback.filter_conditions
    })

    # undefined this.setState
  }

  render() {
    return (
      <div className="cv-btn-box">
        <div className="form-group conversion-button-group">
          <div id="conversion_filter--jsx-render">
            <ConversionReportFilter
              call_back={this.callBack} />
          </div>
        </div>
      </div>
    )
  }
}
```

###fixed

```js
class ConversionReportWrapper extends React.Component {
  callBack(data_callback) {
    this.setState({
      filter_conditions: data_callback.filter_conditions
    })
  }

  render() {
    return (
      <div className="cv-btn-box">
        <div className="form-group conversion-button-group">
          <div id="conversion_filter--jsx-render">
            <ConversionReportFilter
              call_back={() => this.callBack()} />
          </div>
        </div>
      </div>
    )
  }
}
```

```js
class ConversionReportWrapper extends React.Component {
  callBack(data_callback) {
    this.setState({
      filter_conditions: data_callback.filter_conditions
    })
  }

  render() {
    return (
      <div className="cv-btn-box">
        <div className="form-group conversion-button-group">
          <div id="conversion_filter--jsx-render">
            <ConversionReportFilter
              call_back={this.callBack().bind(this)} />
          </div>
        </div>
      </div>
    )
  }
}
```