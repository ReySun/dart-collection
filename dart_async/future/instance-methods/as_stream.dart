/**
 * 转换为Stream
 */
main() {
  Future<String> future = Future<String>(() => "Future constructor");
  print(future.asStream());
}
