// ignore_for_file: unused_local_variable

void main() {
  final singleQuotes = 'I\'m learning Dart';
  final doubleQuotes = "Escaping the \" character";
  final dollarEscape = 'The price is \$3.14.';
  final backslashEscape = 'The Dart string escape character is \\.';
  final unicode = '\u{1F60E}';

  // 组合
  var food = 'bread';
  var str1 = 'I eat $food';
  var str2 = 'I eat ${food}';

  // 多行文本，不换行
  final s1 = 'String '
      'concatenation'
      " even works over line breaks.";

  // 多行文本，会换行
  final s2 = '''
      You can create
      multiline strings like this one.
      ''';
  final s3 = """
      This is also a
      multiline string.""";

  print(s3);
}
