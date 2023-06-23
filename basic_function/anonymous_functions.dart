// 1. Use a standard function expression
// Assign an anonymous function to a variable.
var blockFunc = (int a, int b) {
  return a * b;
};

// 2. Use arrow syntax
var singleFunc = (int a, int b) => a * b;

main() {
  var mapList1 = [1, 2, 3].map((e) => e + 3).toList();
  print(mapList1);

  // returns [5, 7, 9]
  var mapList2 = [1, 2, 3].map((e) {
    e *= 2;
    return e + 3;
  }).toList();
  print(mapList2);

  // A list literal could achieve the same goal.
  print([
    for (var e in [1, 2, 3]) e + 3
  ]);
  print([1, 2, 3].map((e) => e + 3).toList());
}
