main() {
  var a = 2;
  var b = 1 + 1;

  print(a == b);
  print(identical(a, b));

  final s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');
}
