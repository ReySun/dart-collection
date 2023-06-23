import 'dart:async';

main() {
  final timer =
      Timer(const Duration(seconds: 5), () => print('Timer finished'));

  print(timer);
}
