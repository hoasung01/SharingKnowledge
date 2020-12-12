```js
  $(selectors.clone).each(function() {
      $(this).on('click', function(evt) {
          evt.stopImmediatePropagation();
          var cloneScenarioComment = $(this).closest(selectors.scenario_comment).clone();
          $(selectors.scenario_canvas).append(cloneScenarioComment);
          sampleFunctionA();
          sampleFunctionB();
      })
  })
```

###fixed
```js
  $(selectors.clone).each(function() {
      $(this).on('click', function(evt) {
          evt.stopImmediatePropagation();
          var cloneScenarioComment = $(this).closest(selectors.scenario_comment).clone(true);
          $(selectors.scenario_canvas).append(cloneScenarioComment);
          sampleFunctionA();
          sampleFunctionB();
      })
  })
```

###symptoms

- it can trigger the click event but some following event can not trigger

###another fix properly

```js
  $(selectors.scenario_canvas).on('click', selectors.clone, function(evt) {
      evt.stopImmediatePropagation();
      var cloneScenarioComment = $(this).closest(selectors.scenario_comment).clone();
      $(selectors.scenario_canvas).append(cloneScenarioComment);
      sampleFunctionA();
      sampleFunctionB();
  })
```