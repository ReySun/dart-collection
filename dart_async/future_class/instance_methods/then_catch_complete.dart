// Future构造函数
Future<String> future = Future<String>(() => "Future constructor");

main() {
  future.then((value) {
    // 有返回值了就执行
    print(value);
  }).catchError((onError) {
    // 错误的时候会执行
    print(onError);
  }).whenComplete(() {
    // 无论如何都会执行
    print("无论如何都会执行");
  });
}
