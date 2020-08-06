```js
  switch (document.readyState) {
    case "loading":
      // The document is still loading.
      break;
    case "interactive":
      // The document has finished loading. We can now access the DOM elements.
      // But sub-resources such as images, stylesheets and frames are still loading.
      var span = document.createElement("span");
      span.textContent = "A <span> element.";
      document.body.appendChild(span);
      break;
    case "complete":
      // The page is fully loaded.
      console.log("The first CSS rule is: " + document.styleSheets[0].cssRules[0].cssText);
      break;
  }
```