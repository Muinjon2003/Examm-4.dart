import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double area() {
    return pi * pow(radius, 2);
  }
}

class Square extends Shape {
  double side;

  Square({required this.side});

  @override
  double area() {
    return pow(side, 2).toDouble(); 
  }
}

void main() {
  List<Shape> shapes = [
    Circle(radius: 5),
    Square(side: 4),
    Circle(radius: 3),
    Square(side: 6),
  ];

  for (Shape shape in shapes) {
    print('Area of ${shape.runtimeType}: ${shape.area()}');
  }
}
