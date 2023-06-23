/**
 * for循环
 */
main() {
  // for 循环
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // for in循环
  List list = ['one', 'two', 'three'];

  for (String item in list) {
    print(item);
  }
}
