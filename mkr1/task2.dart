import 'dart:math';

class Point {
  double x;
  double y;

  Point(this.x, this.y);
}

double distance(Point p1, Point p2) {
  return sqrt(pow(p2.x - p1.x, 2) + pow(p2.y - p1.y, 2));
}

void main() {
  var start = Point(0, 0);
  var turn1 = Point(3, 4);
  var turn2 = Point(7, 1);
  var finish = Point(10, 5);

  var distance1 = distance(start, turn1);
  var distance2 = distance(turn1, turn2);
  var distance3 = distance(turn2, finish);

  var totalDistance = distance1 + distance2 + distance3;

  print('Сумарна відстань, яку пролетів дрон: $totalDistance');
}
