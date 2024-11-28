/* OOP, Constructors, and Named Parameters
Write a program that:
- Defines a class `Product` with:
- Properties: `String name`, `double price`, `int stock`.
- A constructor using named parameters with default values for `price` and `stock` (e.g., `price =
0.0`, `stock = 0`).
- A method `sell(int quantity)` that reduces the stock and prints a confirmation message.
- In `main()`, create an instance of `Product`, sell a few units, and print the updated stock. */

class Product {
  String name;
  double price;
  int stock;

  Product({required this.name, this.price = 0.0, this.stock = 0});

  void sell(int quantity) {
    if (quantity <= stock) {
      stock -= quantity;
      print("Sold $quantity units of $name. Remaining stock: $stock.");
    } else {
      print(" $quantity  $name. $stock.");
    }
  }
}

void main() {
  Product product = Product(name: "Laptop", price: 1500.0, stock: 10);

  print("Product: ${product.name}");
  print("Price: \$${product.price}");
  print("Stock: ${product.stock}");

  product.sell(3);
  product.sell(5);
  product.sell(4);
  print("${product.name}: ${product.stock}");
}
