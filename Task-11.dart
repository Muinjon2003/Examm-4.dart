
class Product {
  String _name;
  double _price;

  Product(this._name, this._price);

  String get name => _name;

  set name(String name) {
    _name = name;
  }

  double get price => _price;

  set price(double price) {
    if (price >= 0) {
      _price = price;
    } else {
      print('Price cannot be negative.');
    }
  }

  void display() {
    print('Product Name: $_name, Price: \$${_price.toStringAsFixed(2)}');
  }
}

List<Product> filterProducts(List<Product> products, bool Function(Product) condition) {
  return products.where(condition).toList();
}

void main() {
  Product product1 = Product('Laptop', 1500.0);
  Product product2 = Product('Smartphone', 800.0);
  Product product3 = Product('Tablet', 300.0);

  product1.display();
  product2.display();
  product3.display();

  List<Product> products = [product1, product2, product3];

  List<Product> expensiveProducts = filterProducts(products, (product) => product.price > 500);

  print('\nExpensive Products:');
  for (var product in expensiveProducts) {
    product.display();
  }
}
