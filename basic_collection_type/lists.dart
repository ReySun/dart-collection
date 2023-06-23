// ignore_for_file: unused_local_variable

/**
 * 数组
 */
main() {
  // Initialize list and specify full type
  final List<String> list1 = <String>['one', 'two', 'three'];

  // Initialize list using shorthand type
  final list2 = <String>['one', 'two', 'three'];

  // Dart can also infer the type
  final list3 = ['one', 'two', 'three'];

  // using the index operator
  final fruits = <String>['apple', 'orange', 'pear'];
  final fruit = fruits[1];
  print(fruits);

  // Add a value
  fruits.add('peach');
  fruits.addAll(['kiwi', 'mango']);
  print(fruits);

  // Insert a value at a specific position
  fruits.insert(0, 'peach');
  fruits.insertAll(0, ['kiwi', 'mango']);
  print(fruits);

  // 直接通过索引修改值
  final fruits2 = <String>['apple', 'orange', 'pear'];
  fruits2[2] = 'peach';

  // Remove list item
  final fruits3 = <String>[
    'apple',
    'orange',
    'pear',
    'banana',
    'watermelon',
    'strawberry'
  ];
  // Remove the value 'pear' from the list.
  fruits3.remove('pear');
  // Removes the last element from the list.
  fruits3.removeLast();
  // Removes the element at position 1 from the list.
  fruits3.removeAt(1);
  // Removes the elements with positions greater than
  // or equal to start (1) and less than end (3) from the list.
  fruits3.removeRange(1, 3);
  // Removes all elements from the list that match the given predicate.
  fruits3.removeWhere((fruit) => fruit.contains('p'));

  // length list
  final fruits4 = <String>['apple', 'orange', 'pear'];
  assert(fruits4.length == 3);

  // isEmpty or isNotEmpty
  var fruits5 = [];
  assert(fruits5.isEmpty);
  assert(!fruits5.isNotEmpty);

  listFilled();
}

listFilled() {
  // Creates: [ 'a', 'a', 'a' ]
  final list1 = List.filled(3, 'a');

  // Creates: [ 'a0', 'a1', 'a2' ]
  final list2 = List.generate(3, (index) => 'a$index');
}
