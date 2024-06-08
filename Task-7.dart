

class Box<T> {
  T? _value;

  Box([this._value]);

  void setqimat(T value) {
    _value = value;
  }

  T? getqimat() {
    return _value;
  }
}

void main() {
  Box<int> intBox = Box<int>();
  intBox.setqimat(42);
  print('Qimati buttun: ${intBox.getqimat()}');

  Box<String> strBox = Box<String>();
  strBox.setqimat('Sallom');
  print('Qimati String: ${strBox.getqimat()}');

  Box<double> doubleBox = Box<double>(3.14);
  print('Qimati double: ${doubleBox.getqimat()}');
}
