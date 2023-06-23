/**
 * Future.doWhile
 * 
 * 重复执行一个操作，直到它返回 false 。
 * 操作 action 可以是同步的或异步的
 * 只要返回 bool 值 true 或以值 true 完成的 Future<bool> ，就会重复调用该操作。
 * 如果对 action 的调用返回 false 或完成到 false 的 Future，则迭代结束并且 doWhile 返回的Future以 null 值完成。
 * 如果对action 的调用抛出或action 返回的future 以错误完成，则迭代结束并且doWhile 返回的future 以相同的错误完成。
 * 对 action 的调用可能随时发生，包括在调用 doWhile 之后立即发生。唯一的限制是对 action 的新调用不会在前一个调用返回之前发生，如果它返回一个 Future<bool> ，直到Future完成
 */
void main() async {
  var value = 0;

  print("start");
  await Future.doWhile(() async {
    value++;
    print(value);

    await Future.delayed(const Duration(seconds: 1));
    if (value == 3) {
      print('Finished with $value');
      return false;
    }

    return true;
  });
  print("end");
}
// start
// 1
// 2
// 3
// Finished with 3
// end
