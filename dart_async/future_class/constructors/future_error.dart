// Future.error构造函数，返回一个错误。类似于Promise.reject
Future<int> futureError =
    Future.error(Exception('Future.error constructor Issue'));

main() async {
  print(await futureError);
}
