/**
 * 扩展 SDK
 * 
 * 可以被其他文件导入使用
 */

// 扩展dart sdk 的String
extension NumberParsing on String {
  int parseInt() {
    print("parseInt....");
    return int.parse(this);
  }
}

main() {
  String a = "1";
  a.parseInt();
}
