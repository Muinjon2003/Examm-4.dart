
abstract class Vehicle {
  void start();
}

class Car extends Vehicle {
  @override
  void start() {
    print('Car started');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('Bike started');
  }
}

void ssss(List<Vehicle> vehicles, void Function(Vehicle) startFunction) {
  for (Vehicle vehicle in vehicles) {
    startFunction(vehicle);
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car(),
    Bike(),
    Car(),
    Bike(),
  ];

  ssss(vehicles, (vehicle) => vehicle.start());
}
