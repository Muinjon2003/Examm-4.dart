class Animal {
  String nom;
  int sol;

  Animal({required this.nom, required this.sol});
}

class Dog extends Animal {
  String breed;

  Dog({required String nom, required int sol, required this.breed}) : super(nom: nom, sol: sol);

  void bark(String glver) {
    String localVariable = 'Man jegh mezanm!';
    print(localVariable); 

    print('Nomi man ${nom} hast');
    print('Man ${sol} sola hastam'); 
    print('Man ${breed}'); 

    glver = 'Man Sag hastam!';
    print(glver);
  }
}

void main() {
  Dog myDog = Dog(nom: 'Rex', sol: 3, breed: 'Golden Retriever');
  String glver = 'Man taghiryobandai glavni hastam!';
  myDog.bark(glver);

  print(glver);
}
