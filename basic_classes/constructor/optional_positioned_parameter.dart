// 构造函数的可选位置参数
class Point {
  late int x;
  late int y;
  Point(this.x, [this.y = 5]);
}

Point p1 = new Point(1, 2);
Point p2 = new Point(1);
