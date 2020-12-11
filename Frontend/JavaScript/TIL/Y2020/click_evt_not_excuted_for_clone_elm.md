```js
  $(selectors.clone).each(function() {
      $(this).on('click', function(evt) {
          evt.stopImmediatePropagation();
          var cloneScenarioComment = $(this).closest(selectors.scenario_comment).clone();
      })
  })
```

###fixed
```js
  $(selectors.clone).each(function() {
      $(this).on('click', function(evt) {
          evt.stopImmediatePropagation();
          var cloneScenarioComment = $(this).closest(selectors.scenario_comment).clone(true);
      })
  })
```