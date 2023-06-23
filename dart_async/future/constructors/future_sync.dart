main() async {
  // Future.sync构造函数，传进去的函数会在创建Future时立即执行。
  Future<String> futureSync = Future<String>.sync(() {
    print("Future.sync init");
    return "Future.sync return value";
  });
  // 可以尝试不调用futureSync
  print(await futureSync);
}
