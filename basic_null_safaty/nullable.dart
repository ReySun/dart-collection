// ignore_for_file: unused_local_variable, unused_element
import 'dart:math';

main() {
  // 在类型后面添加❓表示可能是null
  int? aNullableInt = null;

  // 函数的返回值可空
  String? returnsNullable() {
    return Random.secure().nextDouble() < 0.5 ? 'Sometimes null!' : null;
  }

  String returnsNonNullable() {
    return 'Never null!';
  }
}
