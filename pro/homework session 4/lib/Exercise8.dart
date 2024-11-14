/* Classes, Objects, Encapsulation
Exercise: Define a class Product with properties like name, price, and quantity. Include methods to update the quantity
and calculate the total price for a given quantity. In the main function, create a Product object, update the quantity, and
print the total price. */


class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
  }

  double calculateTotalPrice() {
    return price * quantity;
  }
}

void main() {
  Product product = Product('Laptop', 1500.0, 10);

  print('Product: ${product.name}');
  print('Price per unit: \$${product.price}');
  print('Initial quantity: ${product.quantity}');
  print('Initial total price: \$${product.calculateTotalPrice()}');

  product.updateQuantity(15);

  print('\nUpdated quantity: ${product.quantity}');
  print('Updated total price: \$${product.calculateTotalPrice()}');
}
