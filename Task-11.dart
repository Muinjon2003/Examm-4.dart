
class Mahsulot {
  String _nom;
  double _narx;

  Mahsulot(this._nom, this._narx);

  String get nom => _nom;

  set nom(String nom) {
    _nom = nom;
  }

  double get narx => _narx;

  set narx(double narx) {
    if (narx >= 0) {
      _narx = narx;
    } else {
      print('Narx pastshudash mumkinnest.');
    }
  }

  void display() {
    print('Nimguii mahsulot: $_nom, Narx: \$${_narx.toStringAsFixed(2)}');
  }
}

List<Mahsulot> filterMahsulotho(List<Mahsulot> mahsulotho, bool Function(Mahsulot) condition) {
  return mahsulotho.where(condition).toList();
}

void main() {
  Mahsulot mahsulot1 = Mahsulot('hp', 7500);
  Mahsulot mahsulot2 = Mahsulot('Redmi', 2000);
  Mahsulot mahsulot3 = Mahsulot('Lenove', 50000);

  mahsulot1.display();
  mahsulot2.display();
  mahsulot3.display();

  List<Mahsulot> mahsulotho = [mahsulot1, mahsulot2, mahsulot3];

  List<Mahsulot> expensiveMahsulotho = filterMahsulotho(mahsulotho, (mahsulot) => mahsulot.narx > 500);

  print('\nExpensive Mahsulotho:');
  for (var mahsulot in expensiveMahsulotho) {
    mahsulot.display();
  }
}
