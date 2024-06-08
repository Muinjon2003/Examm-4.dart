
kitob? globalkitob;

class kitob {
  String sarlavha;
  String aftor;

  kitob({required this.sarlavha, required this.aftor});

  void display() {
    print('Sarlavha: $sarlavha, Aftor (muallif): $aftor');
  }
}

void tafsilot() {
  kitob localkitob = kitob(sarlavha: '1082', aftor: 'Abuali ibni Sino');

  globalkitob = kitob(sarlavha: 'Kimmyoii Saodatt', aftor: 'Muhhamd Ghazolii');

  print('Tafsiloti kitobi mahaalii:');
  localkitob.display();

  print('Tafsiloti kitobi umumijahoni:');
  globalkitob?.display();
}

void main() {
  tafsilot();
}
