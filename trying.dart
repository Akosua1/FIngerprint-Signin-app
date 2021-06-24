//Function makeAdder(int addBy) {
// return (int i) => addBy + i;
//}

//void main() {
// Create a function that adds 2.
//var add2 = makeAdder(2);

// Create a function that adds 4.
//var add4 = makeAdder(4);

//assert(add2(3) == 5);
//assert(add4(3) == 7);
//}

void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

void main() {
  var x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);
  // for (var i = 0; i < 5; i++) {
  //   message.write('!');
  // }
  // while (true) {}
  // var human = Human();
  // Human.walk('Pauline');
  // human.walk();
  var pauline = Pauline();
  pauline.jump();
  var animal = Animal(10);
  animal.reproduce();

  var plans = Plans(15);
  plans.learn();

  var cars = Cars(20);
  cars.benz();

  var arithmetic_operations = Arithmetic_Operations(10, 5);
  print(arithmetic_operations.addition());
  //arithmetic_operations.subtraction();
  //arithmetic_operations.division();
  //arithmetic_operations.multiplication();
  Books books = paulinesBook('Hate in the air');
  print(books.title);
}

var message = StringBuffer('Dart is fun');
pauline(String hello) {}

class Pauline extends Human {}

class Human {
  int legs;
  Human({this.legs = 2});

  walk(String name) {
    print(name + ' walking');
  }

  jump() {
    print('i jump');
  }
}

class Animal {
  int tails;
  Animal(this.tails);

  locomote() {
    print('Every animal undergoes locomotion ');
  }

  reproduce() {
    print('Every animal goes through reproduction ' +
        this.tails.toString() +
        ' times in a lifetime');
  }

  feeding() {
    print('Every animal needs feeding');
  }
}

class Plans {
  int days;
  Plans(this.days);

  sleep() {
    print('I will sleep today');
  }

  eat() {
    print('I will eat today');
  }

  learn() {
    print('I will learn ' + this.days.toString() + ' times today');
  }
}

class Cars {
  int brands;
  Cars(this.brands);

  chevolet() {
    print('I will buy a car from chevolet');
  }

  benz() {
    print(
        'I will get ' + this.brands.toString() + ' cars from the benz company');
  }

  toyota() {
    print('I will purchase a car from Toyota');
  }
}

class Arithmetic_Operations {
  int number1;
  int number2;
  Arithmetic_Operations(
    this.number1,
    this.number2,
  );

  int addition() {
    return this.number1 + this.number2;
  }

  int subtraction() {
    return this.number1 - this.number2;
  }

  double division() {
    return this.number1 / this.number2;
  }

  int multiplication() {
    return this.number1 * this.number2;
  }
}

int eat() => 20;

class Books {
  String title;
  String? author;
  int? yearPublished;
  int pages;
  Books(
      {required this.title,
      this.author,
      required this.pages,
      this.yearPublished});
}

Books paulinesBook(String title) {
  return Books(title: title, pages: 20);
}
