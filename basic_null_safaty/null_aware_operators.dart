// ignore_for_file: unused_local_variable

/**
 * Dart supports the null assignment operator (??=),
 * null-coalescing operator (??),
 * and optional chaining operator (?.).
 * These operators work the same as JavaScript
 */
main() {
  // ! Operator
  // nonOperator();

  // null-coalescing operator (??)
  nullCoalescing(1);
  nullCoalescing(null);

  // null assignment operator (??=)
  nullAssignmentOperator("小明");
  nullAssignmentOperator(null);

  // optional chaining operator (?.)
  optionalChainingOperator();
}

// ! Operator
nonOperator() {
  int? a = null;

  // Not allowed.
  // int b1 = a;
  // 告诉编译器，a不可能为null
  int b2 = a!;

  var myObject;
  // 如果myObject在运行时是null，则下面会报错
  myObject!.someProperty;
  myObject!.someMethod();
}

// null-coalescing operator (??)
nullCoalescing(int? num) {
  print(
    '传进来的值是${num},最后的值是 ${num ?? "default"}',
  );
}

// null assignment operator (??=)
nullAssignmentOperator(String? name) {
  var originName = name;
  var finalName = name ??= 'James';
  print("传进来的值是${originName}, 最后的值是 ${finalName}");
}

// optional chaining operator (?.)
optionalChainingOperator() {
  var animal = new Animal('cat');
  var empty = null;

  // animal 非空，返回 animal.name 的值 cat
  print(animal?.name);
  // empty 为空，返回 null
  print(empty?.name);
}

class Animal {
  final String? name;
  Animal(String? this.name);
}
