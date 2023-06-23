/**
 * Future.any
 * 
 * 类似于js的Promise.race
 * Future的any方法返回的是第一个执行完成的future的结果，不管是否正常返回还是返回一个error
 */
void main() async {
  final result = await Future.any([slowInt(), delayedString(), fastInt()]);
  print(result);
}

Future<int> slowInt() async {
  await Future.delayed(const Duration(seconds: 2));
  return 2;
}

Future<String> delayedString() async {
  await Future.delayed(const Duration(seconds: 3));
  throw ('Time has passed');
}

Future<int> fastInt() async {
  await Future.delayed(const Duration(seconds: 1));
  return 3;
}
