

class Person {
  String nom;
  int sol;

  Person({required this.nom, required this.sol});
}

class Mualim extends Person {
  String fanitalimi;

  Mualim({required String nom, required int sol, required this.fanitalimi})
      : super(nom: nom, sol: sol);
}

List<Person> Opshii(List<Person> persons, bool Function(Person) condition) {
  return persons.where(condition).toList();
}

void main() {
  Person person1 = Person(nom: 'Ali', sol: 30);
  Person person2 = Person(nom: 'Vali', sol: 25);
  Mualim teacher1 = Mualim(nom: 'Sino', sol: 35, fanitalimi: 'Matematica');
  Mualim teacher2 = Mualim(nom: 'Binno', sol: 40, fanitalimi: 'Fizika');

  List<Person> persons = [person1, person2, teacher1, teacher2];

  List<Person> filteredPersons = Opshii(persons, (Person person) => person.sol > 30);

  print('Shaxsoni  30: kalontar');
  for (var person in filteredPersons) {
    print('Nom: ${person.nom}, Solla: ${person.sol}');
    if (person is Mualim) {
      print('Fanitalimii: ${person.fanitalimi}');
    }
  }
}
