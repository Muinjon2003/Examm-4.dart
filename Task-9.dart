import 'dart:io';
import 'dart:math';

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  double distanceFromOrigin() {
    return sqrt(x * x + y * y);
  }
}

List<double> distancesFromOrigin(List<Point> points) {
  return points.map((point) => point.distanceFromOrigin()).toList();
}

void main() {
  List<Point> points = [
    const Point(3, 4),
    const Point(1, 1),
    const Point(0, 0),
    const Point(5, 12),
  ];

  List<double> distances = distancesFromOrigin(points);
  for (double distance in distances) {
    print('Distance from origin: $distance');
  }
}
