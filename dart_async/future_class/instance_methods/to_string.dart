main() {
  Future<String> future = Future<String>(() => "Future constructor");

  print(future.toString());
}
