import 'dart:async';

main() async {
  /// 直接使用构造函数，只能被listen一次
  StreamController<String> _controller = StreamController(
    onListen: () {
      print("_controller onListen");
    },
    onPause: () {
      print("_controller onPause");
    },
    onResume: () {
      print("_controller onResume");
    },
    onCancel: () {
      print("_controller onCancel");
    },
  );
  print(_controller.hasListener);
  StreamSubscription subscription = _controller.stream.listen((event) {
    print("subscription 接收到：$event");
  });

  await Future.delayed(Duration(seconds: 1));
  subscription.pause();
  print("subscription.pause()，isPaused值为：" + subscription.isPaused.toString());

  await Future.delayed(Duration(seconds: 1));
  subscription.resume();
  print("subscription.resume()，isPaused值为：" + subscription.isPaused.toString());

  _controller.sink.add("before subscription.cancel");

  await Future.delayed(Duration(seconds: 1));
  print("subscription.cancel()");
  subscription.cancel();

  // cancel之后不能add，但是不报错
  _controller.sink.add("after subscription.cancel");
}
