/* Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods */


void main() {
  var person = Person(name: 'Ali', age: 30, city: 'Egypt');
  
  print('Name: ${person.name}');
  print('Age: ${person.age}');
  print('City: ${person.city}');
  
  person.sayHello();
  print(' ${person.isAdult()}');
}

class Person {
  
  String name;
  int age;
  String city;

  
  Person({required this.name, required this.age, required this.city});

  
  void sayHello() {
    print('Hello, my name is $name and I live in $city.');
  }

  
  bool isAdult() {
    return age >= 18;
  }
}
