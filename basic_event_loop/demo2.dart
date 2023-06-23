import 'dart:async';

/**
 * 运行结果：每次运行都会判断是否有微任务和事件任务，有则先运行微任务
 * start
 * end
 * microtask
 * event
 * microtask in event
 * event in microtask
 */
main() {
  print("start");

  // 事件任务
  Timer.run(() {
    print("event");

    scheduleMicrotask(() {
      print("microtask in event");
    });
  });

  // 微任务
  scheduleMicrotask(() {
    print("microtask");

    // 事件任务
    Timer.run(() {
      print("event in microtask");
    });
  });

  print("end");
}
