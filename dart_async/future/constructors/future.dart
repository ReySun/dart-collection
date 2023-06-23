// Future构造函数
Future<String> future = Future<String>(() => "Future constructor");

void main() async {
  print(await future);
}
