// 1. Future构造函数
Future<String> future = Future<String>(() => "Future constructor");

// 2. Future.delayed构造函数
Future<String> futureDelayed = Future.delayed(
  Duration(seconds: 2),
  () => "Future.delayed constructor",
);

// 3. Future.error构造函数，返回一个错误。类似于Promise.reject
Future<int> futureError =
    Future.error(Exception('Future.error constructor Issue'));

// 4. Future.value构造函数，直接返回一个值。类似于Promise.resolve
Future<String> futureValue = Future<String>.value("Future.value constructor");

void main() async {
  print(await future);
  print(await futureDelayed);
  print(await futureValue);

  // 5. Future.sync构造函数，传进去的函数会在创建Future时立即执行。
  Future<String> futureSync = Future<String>.sync(() {
    print("Future.sync init");
    return "Future.sync return value";
  });
  // 可以尝试不调用futureSync
  print(await futureSync);

  // 6. Future.microtask
  Future<String> futureMicroTask = Future.microtask(() {
    print('Future.microtask init');
    return "Future.microtask return value";
  });
  print('main');
  // 可以尝试不调用futureMicroTask
  print(await futureMicroTask);

  // print(await futureError);
}
