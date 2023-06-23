import 'dart:async';

main() async {
  final timer =
      Timer(const Duration(seconds: 5), () => print('Timer finished'));

  print('timer 是否激活状态：' +
      timer.isActive.toString() +
      '\ntick = ' +
      timer.tick.toString());

  await Future.delayed(Duration(seconds: 5));

  // 你也可以提前取消timer
  // timer.cancel;

  print('5秒之后 timer 是否激活状态：' +
      timer.isActive.toString() +
      '\ntick = ' +
      timer.tick.toString());
}
