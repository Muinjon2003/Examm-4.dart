class Animal {
  String nom;
  int sol;

  Animal(this.nom, this.sol);
}

class Cat extends Animal {
  String rang;

  Cat(String nom, int sol, this.rang) : super(nom, sol);

  String opshii() => 'Nomash: $nom, Solash: $sol, Rangash: $rang';
}

void main() {
  Cat myCat = Cat('Subhon', 3, 'Xokistarang');

  print(myCat.opshii());
}
