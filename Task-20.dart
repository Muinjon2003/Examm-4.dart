

class Course {
  String _title;
  int _duration;

  Course(this._title, this._duration);

  String get title => _title;

  set title(String value) => _title = value;

  int get duration => _duration;

  set duration(int value) => _duration = value;

  void displayDetails() {
    print('Sarlavha: $_title, Davomnoki: $_duration soat');
  }
}

void Kurs(List<Course> courses, int durationThreshold) {
  courses.where((course) => course.duration > durationThreshold).forEach((course) => course.displayDetails());
}

void main() {
  List<Course> courses = [
    Course('Dar Zaboni barnomasozii Dart doxil shudan ', 4),
    Course('Web Development bo  Flutter', 6),
    Course('Zaboni barnomasozii murakkab Dart', 8),
  ];

  Kurs(courses, 5);
}
