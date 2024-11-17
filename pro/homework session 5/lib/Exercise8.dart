/* Inheritance
Create a class ElectricCar that inherits from the Car class. Add a new property batteryCapacity (int)
and a method displayBatteryStatus() that prints the battery capacity. Override the displayInfo()
method to include battery details.
Goal: Practice inheritance and method overriding. */


class Car {
  String _make;
  String _model;
  int _year;

  Car(this._make, this._model, this._year);

  String get make => _make;

  set make(String make) {
    if (make.isNotEmpty) {
      _make = make;
    } else {
      print("Make cannot be empty.");
    }
  }

  String get model => _model;

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

class ElectricCar extends Car {
  int batteryCapacity; // in kWh

  ElectricCar(String make, String model, int year, this.batteryCapacity)
      : super(make, model, year);

  void displayBatteryStatus() {
    print("Battery Capacity: $batteryCapacity kWh");
  }

  @override
  void displayInfo() {
    super.displayInfo(); 
    print("Battery Capacity: $batteryCapacity kWh");
  }
}

void main() {
  ElectricCar myElectricCar = ElectricCar("Tesla", "Model 3", 2023, 75);

  myElectricCar.displayInfo();

  print("\nBattery Status:");
  myElectricCar.displayBatteryStatus();
}

