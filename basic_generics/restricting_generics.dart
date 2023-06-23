// ignore_for_file: unused_local_variable

/**
 * 限制类范型扩展的类型
 */
class NumberManager<T extends num> {}

min() {
// Valid.
  var manager = NumberManager<int>();
  var manager2 = NumberManager<double>();
// Invalid, String nor its parent classes extend num.
  // var manager3 = NumberManager<String>();
}
