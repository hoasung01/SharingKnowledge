```html
  1. method 1: function based

  - this method is useful if we want to create several similar objects.

  ```javascript
    function Employee(fName, lName, age, salary) {
      this.fName = fName;
      this.lName = lName;
      this.age = age;
      this.salary = salary;
    }

    // Creating multiple object which have similar property but diff
    // value assigned to object property.

    var employee1 = new Employee('John', 'Moto', 24, '5000$')
    var employee2 = new Employee('Hai', 'Nguyen', 30, '8000$')
    var employee3 = new Employee('Loc', 'Ngan', 21, '4000$')
  ```

  2. method 2: object literal

  - this is a best way to crate an object and this is used frequently

  ```javascript
    var employee = {
      name: 'Hai',
      salary: '2000$',
      getName: function() {
        return this.name;
      }
    }
  ```

  3. method 3: from `Object` using `new` keyword

  ```javascript
    // Created employee object using new keywords and Object()
    var employee = new Object();

    employee.name = 'Nishant';
    employee.getName = function() {
      return this.name;
    }
  ```

  4. method 4: using `Object.create`
```