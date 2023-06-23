/**
 * while 循环
 */
main() {
  // while 循环
  var int1 = 1;
  while (int1 <= 10) {
    if (int1 % 2 == 0) {
      print(int1);
    }
    int1++;
  }

  // do while 循环
  int int2 = 4;
  do {
    if (int2 % 2 == 0) {
      print(int2);
    }

    int2++;
  } while (int2 <= 10);
}
