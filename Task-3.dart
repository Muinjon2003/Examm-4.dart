class Rectangle {
  int width;
  int height;

  Rectangle({required this.width, required this.height});

  int get area => width * height;
}

void main() {
  List<Rectangle> rectangles = [
    Rectangle(width: 4, height: 5),
    Rectangle(width: 3, height: 6),
    Rectangle(width: 2, height: 7),
    Rectangle(width: 5, height: 4),
    
  ];

  Rectangle? largestRectangle;
  int largestArea = 0;

  for (Rectangle rectangle in rectangles) {
    if (rectangle.area > largestArea) {
      largestArea = rectangle.area;
      largestRectangle = rectangle;
    }
  }

  if (largestRectangle != null) {
    print('Chorkunjai masohatash kalontarin ast ${largestRectangle.width}x${largestRectangle.height} bo maydoni $largestArea');
  } else {
    print('Yagon rostkunja vujud nadorad');
  }
}