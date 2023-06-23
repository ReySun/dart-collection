import 'dart:async';

/**
 * 周期性的执行，类似于js的setInterval
 */
main() {
  var counter = 3;
  Timer.periodic(const Duration(seconds: 2), (timer) {
    print(timer.tick);
    print("isActive：" + timer.isActive.toString());
    counter--;

    if (counter == 0) {
      timer.cancel();
      print('Cancel timer');
      print("isActive：" + timer.isActive.toString());
    }
  });
}
