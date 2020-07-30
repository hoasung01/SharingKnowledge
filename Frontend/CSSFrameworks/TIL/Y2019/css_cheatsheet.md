[css cheatsheet](https://learn-the-web.algonquindesign.ca/topics/css-selectors-units-cheat-sheet/)

### Units
  - px
    ```ruby
    CSS pixels—different sizes for every device.
    100px is exactly 100 pixels in all situations.
    ```
  - em
    ```ruby
      Based on the font-size of the parent (or current element). 1em is 1 × the parent element’s size.
      0.5em is 0.5 × the parent element’s size.
    ```
  - rem
    ```ruby
      Based on the font-size set in the html element. 1.5rem is 1.5 × the html element’s font size.
    ```
  - % ( percentage )
  - vh ( viewport height )
  - vw ( viewport width )

### Unit rules
  - Use rem for font-size
    ```ruby
    Always use rem for font sizes because it’s easier to manage.
    Never—ever—user px for font sizes.
    ```

  - Use rem or em for paddings and margins
    ```ruby
    The idea being that we want the margins and paddings to increase when the font size increases.
    Most often I use em for padding and rem for margin
    ```

  - Use % for widths
    ```ruby
    Most often use % for widths because we want most things to be flexible.
    Sometimes using px or em for widths is okay too.
    ```

  - Use em for maximum widths
    ```ruby
    Maximum widths required a fixed measurement—so em for max-width works
    because we want the max-width to increase as the font size increases.
    ```

  - Use px for borders and accuracy
    ```ruby
    Use pixels for accuracy—when things should always be the same size: logos as an example.
    Or use pixels for borders—though sometimes em for border is cool too.
    Never—ever—user px for font sizes.
    ```

###CSS Combinator Selectors
[css_combinators](https://www.w3schools.com/css/css_combinators.asp)

  - `div p` => Selects all <p> elements inside <div> elements
  - `div > p` => Selects all <p> elements where the parent is a <div> element
  - `div + p` => Selects all <p> elements that are placed immediately after <div> elements
  - `p ~ ul` => Selects every <ul> element that are preceded by a <p> element
