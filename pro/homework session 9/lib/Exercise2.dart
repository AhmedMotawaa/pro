/* 2. Classes, Inheritance, and Static Methods
Write a program that:
- **Creates a base class `Vehicle` with:**
- Properties: `String brand` and `int year`.
- A method `describe()` that prints the brand and year.
- **Creates a subclass `Car` that:**
- Extends `Vehicle`.
- Adds a property `int mileage`.
- Overrides the `describe()` method to include mileage.
- Adds a static method `Car.totalMileage(List<Car> cars)` to calculate and print the total mileage of
a list of cars.
- **In `main()`, create a list of `Car` objects, calculate the total mileage, and print the details of each
car.** */

void main() {
  List<Car> cars = [
    Car(brand: "Toyota", year: 2015, mileage: 50000),
    Car(brand: "Honda", year: 2018, mileage: 30000),
    Car(brand: "Ford", year: 2020, mileage: 45000),
  ];

  for (Car car in cars) {
    car.describe();
  }

  int totalMileage = Car.totalMileage(cars);
  print("Total Mileage: $totalMileage km");
}

class Vehicle {
  String brand;
  int year;

  Vehicle({required this.brand, required this.year});

  void describe() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  int mileage;

  Car({required String brand, required int year, required this.mileage})
      : super(brand: brand, year: year);

  @override
  void describe() {
    print("Brand: $brand, Year: $year, Mileage: $mileage km");
  }

  static int totalMileage(List<Car> cars) {
    int total = 0;
    for (Car car in cars) {
      total += car.mileage;
    }
    return total;
  }
}
