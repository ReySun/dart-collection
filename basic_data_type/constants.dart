// ignore_for_file: unused_local_variable

/**
 * 常量
 */
main() {
  runtimeConst();

  buildConst();
}

// 运行时常量
runtimeConst() {
  // 先定义，再赋值
  final String name;
  name = "aaa";

  // 直接赋值
  final age = 27;
}

// 构建时常量
buildConst() {
  const PI = 3.14;

  var foo = const [];
  // Equivalent to `const []`
  const baz = [];
}
