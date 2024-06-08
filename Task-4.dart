

class Moshin {
  String soxt;
  String namud;

  Moshin({required this.soxt, required this.namud});

  Moshin.SSSS(Map<String, dynamic> map)
      : soxt = map['soxt'],
        namud = map['namud'];
}

List<Moshin> guruhimoshin(List<Map<String, dynamic>> maps) {
  return maps.map((map) => Moshin.SSSS(map)).toList();
}

void main() {
  List<Map<String, dynamic>> moshinMaps = [
    {'soxt': 'Lada', 'namud': 'priora'},
    {'soxt': 'Mersedec', 'namud': 'ClS63'},
    {'soxt': 'Opel', 'namud': 'Astra'},
  ];

  List<Moshin> moshins = guruhimoshin(moshinMaps);

  for (Moshin moshin in moshins) {
    print('Soxt: ${moshin.soxt}, Namud: ${moshin.namud}');
  }
}
