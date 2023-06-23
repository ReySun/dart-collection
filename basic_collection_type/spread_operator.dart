// ignore_for_file: unused_local_variable

main() {
  listSpreadOperator();
  setSpreadOperator();
  mapSpreadOperator();
}

listSpreadOperator() {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1]; // [0, 1, 2, 3]

  // When the list being inserted could be null:
  var list3 = null;
  var list4 = [0, ...?list1]; // [0]
}

void mapSpreadOperator() {
  // Spread operator with maps
  var map1 = {'foo': 'bar', 'key': 'value'};
  var map2 = {'foo': 'baz', ...map1}; // {foo: bar, key: value}
}

void setSpreadOperator() {
  // Spread operator with sets
  var set1 = {'foo', 'bar'};
  var set2 = {'foo', 'baz', ...set1}; // {foo, baz, bar}
}
