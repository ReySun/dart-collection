// Future.delayed构造函数
Future<String> futureDelayed = Future.delayed(
  Duration(seconds: 2),
  () => "Future.delayed constructor",
);

void main() async {
  print(await futureDelayed);
}
