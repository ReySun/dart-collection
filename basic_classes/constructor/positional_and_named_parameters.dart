/**
 * 构造函数的可选+具名参数
 */
class Point {
  late int x;
  late int y;
  bool? xEqualsY;

  Point(int x, int y, {bool? xEqualsY}) {
    this.x = x;
    this.y = y;
  }
}

Point p1 = new Point(1, 2, xEqualsY: true);
