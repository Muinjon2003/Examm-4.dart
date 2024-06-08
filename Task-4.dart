

class Car {
  String make;
  String model;

  Car({required this.make, required this.model});

  Car.fromMap(Map<String, dynamic> map)
      : make = map['make'],
        model = map['model'];
}

List<Car> carsFromMaps(List<Map<String, dynamic>> maps) {
  return maps.map((map) => Car.fromMap(map)).toList();
}

void main() {
  List<Map<String, dynamic>> carMaps = [
    {'make': 'Toyota', 'model': 'Corolla'},
    {'make': 'Honda', 'model': 'Civic'},
    {'make': 'Ford', 'model': 'Focus'},
  ];

  List<Car> cars = carsFromMaps(carMaps);

  for (Car car in cars) {
    print('Make: ${car.make}, Model: ${car.model}');
  }
}