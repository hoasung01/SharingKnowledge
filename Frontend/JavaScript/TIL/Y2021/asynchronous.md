```html
- Callbacks
- Promises
  +  use to escape Callback Hell
- Async / Await
```

![asynchronous](../../Assets/asynchronous.png "asynchornous")
![synchronous](../../Assets/synchronous.png "synchornous")
![promise](../../Assets/promise.png "promise")

###synchronous example

```js
console.log(" I ");
console.log(" eat ");
console.log(" Ice Cream ");

//result is: I -> eat -> Ice Cream
```

###asynchronous example

```js
console.log("I");
// This will be shown after 2 seconds
setTimeout(()=>{
  console.log("eat");
},2000)
console.log("Ice Cream")

//result is: I -> Ice Cream -> eat
```

###Promise

    A promise is made
          |
      --Pending--
     |           |
  Resolve      Reject
     |           |
     .then       |
     |           |
     .then     catch
       |        |
        .finally

[source](https://www.freecodecamp.org/news/javascript-async-await-tutorial-learn-callbacks-promises-async-await-by-making-icecream/)

###Promise example

```js
function order(){
   return new Promise( (resolve, reject) =>{

    // Write code here
   } )
}
```

###Async/Await example

```js
//👇 the magical keyword
 async function order() {
    // Write code here
 }
```

###Promise try catch example

```js
function kitchen(){

  return new Promise ((resolve, reject)=>{
    if(true){
       resolve("promise is fulfilled")
    }

    else{
        reject("error caught here")
    }
  })
}

kitchen()  // run the code
.then()    // next step
.then()    // next step
.catch()   // error caught here
.finally() // end of the promise [optional]
```

###Async/Await try catch example

```js
//👇 Magical keyword
async function kitchen(){

   try{
// Let's create a fake problem
      await abc;
   }

   catch(error){
      console.log("abc does not exist", error)
   }

   finally{
      console.log("Runs code anyways")
   }
}

kitchen()  // run the code
```