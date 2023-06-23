// Future.value构造函数，直接返回一个值。类似于Promise.resolve
Future<String> futureValue = Future<String>.value("Future.value constructor");

void main() async {
  print(await futureValue);
}
