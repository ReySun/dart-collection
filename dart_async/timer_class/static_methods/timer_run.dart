import 'dart:async';

/**
 * 尽快的异步执行函数
 * 
 * 类似于vue nextTick
 */
main() {
  timerFun() {
    print('timer run');
  }

  Timer.run(timerFun);

  // Timer.run等价于下面的方式
  new Timer(Duration.zero, timerFun);
}
