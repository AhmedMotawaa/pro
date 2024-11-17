/* OOP - Classes and Objects
Create a class Car with the following properties:
- make (String)
- model (String)
- year (int)
Add a method displayInfo() that prints all the car's details. Instantiate a Car object and call its
displayInfo() method.
Goal: Introduce classes, objects, and methods. */


class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void displayInfo() {
    print("Car Make: $make");
    print("Car Model: $model");
    print("Car Year: $year");
  }
}

void main() {
  Car myCar = Car("kia", "cerato", 2020);

  myCar.displayInfo();
}

