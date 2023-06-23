/**
 * timeout
 * 
 * 其实就是告诉之前的实例，给你这么多时间，你不返回值那我就自己处理，我不想处理就开始摆烂报错
 */
void main() async {
  // 如果这个Future及时完成，则返回一个与这个Future具有相同值的新Future。
  var result = await waitTask().timeout(const Duration(seconds: 10));
  print(result);

  // 如果在timeLimit 过去之前这个future 没有完成，
  // 那么将执行onTimeout 动作，并将其结果(无论是返回还是抛出)用作返回的future 的结果。
  // onTimeout 函数必须返回 T 或 Future<T>
  result = await waitTask()
      .timeout(const Duration(seconds: 1), onTimeout: () => 'timeout');
  print(result);

  // 如果省略 onTimeout ，超时将导致返回的Future以 TimeoutException 完成。
  result = await waitTask().timeout(const Duration(seconds: 2));
}

Future<String> waitTask() async {
  await Future.delayed(const Duration(seconds: 5));
  return 'completed';
}
