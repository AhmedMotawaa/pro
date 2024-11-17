/* Encapsulation
Add private properties _make and _model to the Car class created in Exercise 6. Add getters and
setters for these properties. Modify the class to demonstrate encapsulation.
Goal: Understand access control and encapsulation principles. */


// Defining the Car class
class Car {
  // Private properties
  String _make;
  String _model;
  int _year;

  // Constructor to initialize the properties
  Car(this._make, this._model, this._year);

  // Getter for _make
  String get make => _make;

  // Setter for _make
  set make(String make) {
    if (make.isNotEmpty) {
      _make = make;
    } else {
      print("Make cannot be empty.");
    }
  }

  // Getter for _model
  String get model => _model;

  // Setter for _model
  set model(String model) {
    if (model.isNotEmpty) {
      _model = model;
    } else {
      print("Model cannot be empty.");
    }
  }

  int get year => _year;

  set year(int year) {
    if (year > 1885) { 
      _year = year;
    } else {
      print("Invalid year for a car.");
    }
  }

  void displayInfo() {
    print("Car Make: $_make");
    print("Car Model: $_model");
    print("Car Year: $_year");
  }
}

void main() {
  Car myCar = Car("kia", "cerato", 2020);

  myCar.displayInfo();

  myCar.make = "Honda";
  myCar.model = "Civic";
  myCar.year = 2023;

  print("\nUpdated Car Details:");
  myCar.displayInfo();
}

