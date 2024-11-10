/* Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).*/


import 'dart:io';

void main() {
  
  print("Enter number 1:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter number 2:");
  double num2 = double.parse(stdin.readLineSync()!);


  double addition = add(num1, num2);
  double subtraction = subtract(num1, num2);
  double multiplication = multiply(num1, num2);
  double division = divide(num1, num2);
  print("$addition");
  print("$subtraction");
  print("$multiplication");
  print("$division");

  print("${add(num1, num2, 5, 10)}");
}

double add(double a, double b, [double c = 0, double d = 0]) {
  return a + b + c + d;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    print("Error: Division by zero");
    return 0;
  }
}