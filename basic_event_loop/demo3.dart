import 'dart:async';
import 'dart:isolate';

late Isolate isolate;
String name = "global init name";

main() {
  isolateServer();
}

void isolateServer() async {
  final receive = ReceivePort();
  isolate = await Isolate.spawn(changeName, receive.sendPort);

  receive.listen((message) {
    print("global name：${name}");
    print("receive message：${message}");
  });
}

void changeName(SendPort port) {
  name = "modified name";
  port.send(name);
  print("当前线程的name：$name");
}
