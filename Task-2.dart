class Student {
  String name;
  List<int> grades;

  Student({required this.name, required this.grades});
}

List<double> hisob(List<Student> students) {
  return students.map((student) => student.grades.fold(0, (sum, grade) => sum + grade) / student.grades.length).toList();
}
 
void main() {
  List<Student> students = [
    Student(name: 'Amina', grades: [90, 80, 70]),
    Student(name: 'Ali', grades: [95, 85, 75]),
    Student(name: 'Amin', grades: [90, 80, 70]),
    Student(name: 'Sino', grades: [90, 80, 70]),
    Student(name: 'Bino', grades: [95, 85, 75]),
    Student(name: 'Ahmad', grades: [90, 80, 70]),
    Student(name: 'Vali', grades: [95, 85, 75]),
    Student(name: 'Suman', grades: [98, 92, 88]),
  ];

  List<double> summaitog = hisob(students);
  for (int i = 0; i < students.length; i++) {
    print('${students[i].name}: ${summaitog[i]}');
  }
}