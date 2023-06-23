/**
 * 具名参数
 */
class Point {
  late int x;
  late int y;
  Point({required this.y, this.x = 5});
}

Point p3 = new Point(x: 1, y: 2);
