
void main() {
  Fish fish = Fish('Goldie', 1);
  Duck duck = Duck('Daffy', 2);

  Map<String, Animal> animals = {
    'Laqqamohii': fish,
    'Murghobi': duck,
  };

  chhhh(animals);
}
mixin Swimmable {
  void swim() {
    print('Swimming');
  }
}

class Animal {
  String nom;
  int sol;

  Animal(this.nom, this.sol);
}

class Fish extends Animal with Swimmable {
  Fish(String nom, int sol) : super(nom, sol);

  @override
  void swim() {
    print('$nom shinno mekunnadd.');
  }
}

class Duck extends Animal with Swimmable {
  Duck(String nom, int sol) : super(nom, sol);

  @override
  void swim() {
    print('$nom shinno mekunnadd.');
  }
}

void chhhh(Map<String, Animal> animals) {
  for (var animal in animals.values) {
    if (animal is Swimmable) {
      (animal as Swimmable).swim();  
    }
  }
}


