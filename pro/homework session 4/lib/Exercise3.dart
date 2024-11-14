/* Arithmetic operators
Exercise: Build a program that takes two numbers as input and performs addition, subtraction, multiplication, and
division. Display each result to the console. */


import 'dart:io';

void main() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  double addition = num1 + num2;
  double subtraction = num1 - num2;
  double multiplication = num1 * num2;
  double division = num1 / num2;

  print("The result of addition: $addition");
  print("The result of subtraction: $subtraction");
  print("The result of multiplication: $multiplication");
  print("The result of division: $division");
}
