/**
 * 总结：
 * 可选参数：使用[]，参数必须放在最后
 * 必填参数：使用required
 * 支持命名参数：使用{}
 */

// 可选参数放置在[]中，且可选参数必须放在其他参数的最后面
// 请注意下面函数参数的报错信息

// Valid: `b` has a default value of 5. `c` is marked as nullable.
multiply(int a, [int b = 5, int? c]) {}

// Invalid: a required positional parameter follows an optional one.
// multiply2(int a, [int b = 5], int c) { }

// Invalid: Neither optional positional parameter has a default
//          value or has been flagged as nullable.
// multiply3(int a, [int b, int c]) {}

// named parameters
multiply5(bool x, {required int a, int b = 5, int? c}) {}

main() {
  multiply(3);
  multiply(3, 5);
  multiply(3, 5, 7);

  // Only provide required named parameters
  multiply5(false, a: 3);
  // Override default value of `b`
  multiply5(false, a: 3, b: 9);
  // Provide all named parameters out of orde
  multiply5(false, c: 9, a: 3, b: 2);
}
