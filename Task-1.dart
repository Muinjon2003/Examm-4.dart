
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

Future<List<String>> kalontarr(List<Person> people, int minAge) async {
  try {
    return people.where((person) => person.age > minAge).map((person) => person.name).toList();
  } catch (e) {
    print('Xatto: $e');
    return Future.error(e);
  }
}

void main() async {
  List<Person> people = [
    Person(name: 'Ali', age: 25),
    Person(name: 'Vali', age: 30),
    Person(name: 'Sino', age: 20),
    Person(name: 'Bino', age: 35),
  ];

  int minAge = 25;

  try {
    List<String> olderThanMinAge = await kalontarr(people, minAge);
    print('In odamho kalontarand  $minAge: $olderThanMinAge' );
  } catch (e) {
    print('Xatto: $e');
  }
}
