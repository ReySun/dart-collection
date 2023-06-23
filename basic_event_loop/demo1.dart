import 'dart:async';

/**
 * 运行结果：优先执行微任务
 * start
 * end
 * microtask
 * event
 */
main() {
  print("start");

  // 事件任务
  Timer.run(() {
    print("event");
  });

  // 微任务
  scheduleMicrotask(() {
    print("microtask");
  });

  print("end");
}
