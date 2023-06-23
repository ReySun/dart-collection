// ignore_for_file: unused_local_variable

import 'dart:async';

void main() async {
  /// 使用工厂方法构造可广播的Controller。可以listen多次
  StreamController _controller = StreamController.broadcast(
    // 首次listen，只触发一次。onCancel之后再次listen会再次触发
    onListen: () {
      print("_controller onListen");
    },
    // 所有StreamSubscription取消之后才会触发
    onCancel: () {
      print("_controller onCancel");
    },
  );

  /// 使用多个观察者订阅同一个Stream.
  StreamSubscription subscription1 =
      _controller.stream.listen((event) => print("sub1 接收到 $event"));
  StreamSubscription subscription2 =
      _controller.stream.listen((event) => print("sub2 接收到 $event"));
  StreamSubscription subscription3 =
      _controller.stream.listen((event) => print("sub3 接收到 $event"));

  print("取消所有监听，触发controller onCancel");
  subscription1.cancel();
  subscription2.cancel();
  subscription3.cancel();

  print("############################");
  await Future.delayed(Duration(seconds: 1));
  print("重新listen之后，再次触发controller onListen");
  StreamSubscription subscription4 =
      _controller.stream.listen((event) => print("sub4 接收到 $event"));

  /// 发送事件后，所有已订阅的观察者的都能接收到事件。
  _controller.add("_controller add");
  _controller.sink.add("_controller.sink add");

  // _controller.close();
  print(_controller.done);
}
