import 'dart:developer';
import 'dart:io';

main() {
  String name = "PaulineAdu";
  List initList = [
    'Akwasi',
    'Kwadwo',
    'Kwabena',
    'kwaku',
    'Yaw',
    'Kofi',
    'Kwame'
  ];

  // for (var i = 0; i < name.length; i++) {
  //   print(name[i]);
  //   initList.add(name[i]);
  // }
  initList.sort();
  print(initList);
  // print(add());
  // print(subtract());
  // print(multiply());
  // print(divide());
  // print(names());

  // // String? inputValue = stdin.readLineSync();
  // // print(inputValue);
  // print(pauline(items: [3, 7, 4, 5], reverse: true));
  // functionName(); //calling a function'
  // print(complex(reverse: true, a: [3, 6, 20, 1, 50]));
  print(complexx(
    a: ['Akwasi', 'Kwadwo', 'Kwabena', 'Kwaku', 'Yaw', 'Kofi', 'Kwame'],
    b: ['Akosua', 'Adwoa', 'Abena', 'Akua', 'Yaa', 'Afia', 'Ama'],
  ));
}

int add({a = 9, b = 5, c = 3}) {
  return a + b + c;
}

int subtract({a = 9, b = 5, c = 3}) {
  return a - b - c;
}

int multiply({a = 9, b = 5, c = 3}) {
  return a * b * c;
}

double divide({a = 9, b = 5, c = 3}) {
  return a / b / c;
}

bool names(
    {List lists = const ['Akosua', 'Abena', 'Akua', 'Yaa', 'Afia', 'Ama'],
    searchString}) {
  String searchString = 'Akosua';
  if (lists.contains(searchString)) return true;
  return false;
}

List descnumb(
    {List lists = const [
      3,
      2,
      1,
      4,
      5,
    ],
    bool reverse = false}) {
  return [];
}

int functionName({a, b}) {
  var a = 2 + 3;
  return a;
} //creating a function named argument

int functionName2(a, b) {
  var a = 2 + 3;
  return a;
} //creating a function positional argument

int functionName3(a, b) => 2 + 4; //arrow functions

int functionName4({
  required a,
  b = 45,
}) {
  return a + b;
}

List pauline({List<int>? items, bool reverse = false}) {
  items!.sort((int a, int b) {
    return a.compareTo(b);
  });
  if (reverse) {
    return items.reversed.toList();
  }
  return items;
}

List complex(
    {List<int> a = const [1, 3, 5, 9, 9],
    List<int> b = const [2, 4, 6, 8, 10],
    bool reverse = false}) {
  // List<int> a = [1, 3, 5, 9, 9];
  // List<int> b = [2, 4, 6, 8, 10];
  List<int> newList = a + b;
  newList.sort((int aa, int bb) {
    return aa.compareTo(bb);
  });
  if (reverse) {
    return newList.reversed.toList();
  }

  return newList;
}

List complexx(
    {required List<String> a, required List<String> b, bool reverse = false}) {
  List<String> newList = a + b;
  newList.sort((String a, String b) {
    return a.compareTo(b);
  });
  if (reverse) {
    return newList.reversed.toList();
  }

  return newList;
}
