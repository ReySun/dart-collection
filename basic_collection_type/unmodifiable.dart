// ignore_for_file: unused_local_variable

main() {
  // 1. 编译时就确定的常量，用const
  const fruits = <String>{'apple', 'orange', 'pear'};

  // 2. 不具备编译时常量的功能，可以修改大小和长度
  final fruits2 = <String>{'apple', 'orange', 'pear'};
  fruits2.add("aaa");

  // 3. 使用unmodifiable构造函数，不能修改内容和大小
  final _set = Set<String>.unmodifiable(['a', 'b', 'c']);
  final _list = List<String>.unmodifiable(['a', 'b', 'c']);
  final _map = Map<String, String>.unmodifiable({'foo': 'bar'});
}
