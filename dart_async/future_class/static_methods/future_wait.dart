/**
 * Future.wait
 * 
 * 类似于js的Promise.all
 */
void main() async {
  var value = await Future.wait([delayedNumber(), delayedString()]);
  print(value); // [2, result]
}

Future<int> delayedNumber() async {
  await Future.delayed(const Duration(seconds: 2));
  return 2;
}

Future<String> delayedString() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'result';
}
