const double xOrigin = 0;
const double yOrigin = 0;

/**
 * 命名构造函数，可以创建不通的构造函数
 */
class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = xOrigin,
        y = yOrigin;
}

Point p1 = new Point.origin();
