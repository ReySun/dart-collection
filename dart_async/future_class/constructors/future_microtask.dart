main() async {
  // Future.microtask
  Future<String> futureMicrotask = Future.microtask(() {
    print('Future.microtask init');
    return "Future.microtask return value";
  });
  print('main');
  // 可以尝试不调用futureMicrotask
  print(await futureMicrotask);
}
