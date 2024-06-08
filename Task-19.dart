import 'dart:math';

abstract class Bozikardanmumkin {
  void play();
}

class Piano implements Bozikardanmumkin {
  @override
  void play() {
    print('Piano navoxtan...');
  }
}

class Gittarraaa implements Bozikardanmumkin {
  @override
  void play() {
    print('Strumming the guitar...');
  }
}

void playRandomInstrument(List<Bozikardanmumkin> instruments) {
  final random = Random();
  final index = random.nextInt(instruments.length); 
  instruments[index].play(); 
}

void main() {
  Piano piano = Piano();
  Gittarraaa guitar = Gittarraaa();

  List<Bozikardanmumkin> instruments = [piano, guitar];

  playRandomInstrument(instruments);
}
