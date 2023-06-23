Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield k++;
  }
}

Iterable<int> doubleNaturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield* [k, k];
    k++;
  }
}

main() {
  // [0, 1, 2, 3, 4]
  print(naturalsTo(5).toList());

  // [0, 0, 1, 1, 2, 2]
  print(doubleNaturalsTo(3).toList());
}
