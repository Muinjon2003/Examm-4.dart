class Employee {
  String nom;
  String vazifa;

  Employee({required this.nom, required this.vazifa});
}

List<Employee> Opshiii(
    List<Employee> employees, bool Function(Employee) filter) {
  return employees.where(filter).toList();
}

void main() {
  Employee emp1 = Employee(nom: 'Ali', vazifa: 'Idorakunanda');
  Employee emp2 = Employee(nom: 'Valli', vazifa: 'Barnomasoz');
  Employee emp3 = Employee(nom: 'Sinno', vazifa: 'Designer');
  Employee emp4 = Employee(nom: 'Binno', vazifa: 'Barnomasoz');

  List<Employee> employeeList = [emp1, emp2, emp3, emp4];

  List<Employee> barnomasoz = Opshiii(
      employeeList, (Employee emp) => emp.vazifa == 'Barnomasoz');

  print('BARNOMASOZ:');
  for (var emp in barnomasoz) {
    print('Nom: ${emp.nom}, Vazifa: ${emp.vazifa}');
  }
}
