Basic rules worth remembering:

```html
- “this” always refers to an object.
- “this” refers to an object which calls the function it contains.
- In the global context “this” refers to either window object or is undefined if the ‘strict mode’ is used.
```

###another rules/guideline
```
1. Implicit Binding
2. Explicit Binding
3. new Binding
4. Lexical Binding
5. window Binding
```

[source](https://ui.dev/this-keyword-call-apply-bind-javascript/)

###examples
1. Implicit Binding

-1.1 basic
```js
const user = {
  name: 'Tyler',
  age: 27,
  greet() {
    alert(`Hello, my name is ${this.name}`)
  }
}

user.greet()
```

```html
- In order to figure out what the this keyword is referencing,
first, look to the left of the dot when the function is invoked
- In the example above, user is to “the left of the dot” which means
the this keyword is referencing the user object
```

```js
greet() {
  // alert(`Hello, my name is ${this.name}`)
  alert(`Hello, my name is ${user.name}`) // Tyler
}
```

-1.2 advanced

```js
const user = {
  name: 'Tyler',
  age: 27,
  greet() {
    alert(`Hello, my name is ${this.name}`)
  },
  mother: {
    name: 'Stacey',
    greet() {
      alert(`Hello, my name is ${this.name}`)
    }
  }
}
user.greet()
user.mother.greet()
```

```html
- In the first invocation user is to the left of the dot which means this is
going to reference user.
- In the second invocation, mother is to the left of the dot which means this
is going to reference mother.
```

```js
user.greet() // Tyler
user.mother.greet() // Stacey
```

###################################
2. Explicit Binding

```html
Now, what if instead of our greet function being a method on the user object,
it was just its own standalone function.
```

-2.1 basic
```js
function greet () {
  alert(`Hello, my name is ${this.name}`)
}

const user = {
  name: 'Tyler',
  age: 27,
}
```

```html
- how can we invoke greet but have it be invoked with the this keyword
referencing the user object. We can’t just do user.greet() like we did
before because user doesn’t have a greet method
- In JavaScript, every function contains a method which allows you to do
exactly this and that method is named call.
- With that in mind, we can invoke greet in the context of user with
the following code
```

```js
greet.call(user)
```

-2.2 advanced

```html
What if we also wanted to pass in some arguments?
```

```js
function greet (l1, l2, l3) {
  alert(
    `Hello, my name is ${this.name} and I know ${l1}, ${l2}, and ${l3}`
  )
}
```

```js
function greet (l1, l2, l3) {
  alert(
    `Hello, my name is ${this.name} and I know ${l1}, ${l2}, and ${l3}`
  )
}

const user = {
  name: 'Tyler',
  age: 27,
}

const languages = ['JavaScript', 'Ruby', 'Python']

greet.call(user, languages[0], languages[1], languages[2])
```

```html
- it’s a tad annoying to have to pass in the arguments one by one
from our languages array.
- It would be nice if we could just pass in the whole array as the
second argument and JavaScript would spread those out for us.
- Well good news for us, this is exactly what .apply does. .apply is
the exact same thing as .call, but instead of passing in arguments
one by one, you can pass in a single array and it will spread each
element in the array out for you as arguments to the function.
```

#### using apply insteads of call
```js
const languages = ['JavaScript', 'Ruby', 'Python']

// greet.call(user, languages[0], languages[1], languages[2])
greet.apply(user, languages)
```

-2.3

```html
- The last part of this rule is .bind. .bind is the exact same as .call
but instead of immediately invoking the function, it’ll return a new
function that you can invoke at a later time.
```

```js
function greet (l1, l2, l3) {
  alert(
    `Hello, my name is ${this.name} and I know ${l1}, ${l2}, and ${l3}`
  )
}

const user = {
  name: 'Tyler',
  age: 27,
}

const languages = ['JavaScript', 'Ruby', 'Python']

const newFn = greet.bind(user, languages[0], languages[1], languages[2])
newFn() // alerts "Hello, my name is Tyler and I know JavaScript, Ruby, and Python"
```

3. new Binding

```html
- So, naturally, if a function was called with new, the this keyword
is referencing that new object that the interpreter created.
```

```js
function User (name, age) {
  /*
    Under the hood, JavaScript creates a new object
    called `this` which delegates to the User's prototype
    on failed lookups. If a function is called with the
    new keyword, then it's this new object that interpreter
    created that the this keyword is referencing.
  */

  this.name = name
  this.age = age
}

const me = new User('Tyler', 27)
```

4. Lexical Binding

```html
- Odds are you’ve heard of and used an arrow function before.
  They’re new as of ES6. They allow you to write functions in a
  more concise format.
```

```js
friends.map((friend) => friend.name)
```

```html
- Unlike normal functions, arrow functions don’t have their own this.
Instead, this is determined lexically
```

-4.1 basic

```js
const user = {
  name: 'Tyler',
  age: 27,
  languages: ['JavaScript', 'Ruby', 'Python'],
  greet() {}
}
```

```html
- Let’s make greet a little more intelligent now and assume
that languages can be of any length. To do this, we’ll use .reduce
in order to create our string.
```

```js
const user = {
  name: 'Tyler',
  age: 27,
  languages: ['JavaScript', 'Ruby', 'Python'],
  greet() {
    const hello = `Hello, my name is ${this.name} and I know`

    const langs = this.languages.reduce(function (str, lang, i) {
      if (i === this.languages.length - 1) {
        return `${str} and ${lang}.`
      }

      return `${str} ${lang},`
    }, "")

    alert(hello + langs)
  }
}
```

```html
- When we invoke user.greet(), we expect to see Hello, my name is Tyler
and I know JavaScript, Ruby, and Python..
- Sadly, there’s an error. Can you spot it? Grab the code above and
run it in your console.
- You’ll notice it’s throwing the error
`Uncaught TypeError: Cannot read property 'length' of undefined`
- According to our error, this.languages is undefined
- Wait? Where is the function being invoked?
The function is being passed to .reduce so we have no idea.
- We never actually see the invocation of our anonymous function
since JavaScript does that itself in the implementation of .reduce.
That’s the problem.
- We need to specify that we want the anonymous
function we pass to .reduce to be invoked in the context of user.
- That way this.languages will reference user.languages
```

###code fix using bind
- using bind to invoked the context of user

```js
const user = {
  name: 'Tyler',
  age: 27,
  languages: ['JavaScript', 'Ruby', 'Python'],
  greet() {
    const hello = `Hello, my name is ${this.name} and I know`

    const langs = this.languages.reduce(function (str, lang, i) {
      if (i === this.languages.length - 1) {
        return `${str} and ${lang}.`
      }

      return `${str} ${lang},`
    }.bind(this), "")

    alert(hello + langs)
  }
}
```

```html
- So we’ve seen how .bind solves the issue, but what does this have
to do with arrow functions.
- Earlier I said that with arrow functions ”this is determined lexically.
- That’s a fancy way of saying this is determined how you’d expect,
following the normal variable lookup rules.”
```

###code fix using arrow function

```js
const user = {
  name: 'Tyler',
  age: 27,
  languages: ['JavaScript', 'Ruby', 'Python'],
  greet() {
    const hello = `Hello, my name is ${this.name} and I know`

    const langs = this.languages.reduce((str, lang, i) => {
      if (i === this.languages.length - 1) {
        return `${str} and ${lang}.`
      }

      return `${str} ${lang},`
    }, "")

    alert(hello + langs)
  }
}
```

```html
- Again the reason for this because with arrow functions,
this is determined “lexically”. Arrow functions don’t have their own this.
Instead, just like with variable lookups, the JavaScript interpreter
will look to the enclosing (parent) scope to determine what this is referencing
```

5. window Binding

```html
- Finally is the “catch-all” case - the window binding.
Let’s say we had the following code
```

```js
function sayAge () {
  console.log(`My age is ${this.age}`)
}

const user = {
  name: 'Tyler',
  age: 27
}
```

```html
- As we covered earlier, if you wanted to invoke sayAge in the context of user,
you could use .call, .apply, or .bind.
- What would happen if we didn’t use any of those and instead just invoked sayAge as you normally would
```

```js
sayAge() // My age is undefined
```

```html
- What you’d get is, unsurprisingly,
My age is undefined because this.age would be undefined.
- Here’s where things get a little weird.
- What’s really happening here is because there’s nothing
to the left of the dot, we’re not using .call, .apply, .bind, or the new keyword,
JavaScript is defaulting this to reference the window object.
- What that means is if we add an age property to the window object,
then when we invoke our sayAge function again, this.age will no longer
be undefined but instead, it’ll be whatever the age property is on the window object.
```

```js
window.age = 27

function sayAge () {
  console.log(`My age is ${this.age}`)
}
```

```html
- Pretty gnarly, right? That’s why the 5th rule is the window Binding.
If none of the other rules are met, then JavaScript will default the this
keyword to reference the window object.
```

```html
- As of ES5, if you have “strict mode” enabled, JavaScript will
do the right thing and instead of defaulting to the window object
will just keep “this” as undefined.
```

```js
'use strict'

window.age = 27

function sayAge () {
  console.log(`My age is ${this.age}`)
}

sayAge() // TypeError: Cannot read property 'age' of undefined
```

###Summary

```html
- So putting all of our rules into practice, whenever I see the
this keyword inside of a function, these are the steps I take
in order to figure out what it’s referencing.

1. Look to where the function was invoked.
2. Is there an object to the left of the dot? If so, that’s what the “this” keyword is referencing. If not, continue to #3.
3. Was the function invoked with “call”, “apply”, or “bind”? If so, it’ll explicitly state what the “this” keyword is referencing. If not, continue to #4.
4. Was the function invoked using the “new” keyword? If so, the “this” keyword is referencing the newly created object that was made by the JavaScript interpreter. If not, continue to #5.
5. Is “this” inside of an arrow function? If so, its reference may be found lexically in the enclosing (parent) scope. If not, continue to #6.
6. Are you in “strict mode”? If yes, the “this” keyword is undefined. If not, continue to #7.
7. JavaScript is weird. “this” is referencing the “window” object.
```
