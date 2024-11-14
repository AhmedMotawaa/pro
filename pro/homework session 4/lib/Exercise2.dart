/* Variables, Data types (int, double, String, bool)
Exercise: Create a Dart program that declares and initializes variables of different types (int, double, String, bool).
Calculate the sum of two numbers, concatenate two strings, and print out the results */


void main() {
  int num1 = 10;
  double num2 = 15.5;
  String greeting = 'Hello';
  String name = 'Dart';
  bool isActive = true;

  double sum = num1 + num2;
  print('The sum of $num1 and $num2 is: $sum');

  String message = greeting + ', ' + name + '!';
  print(message);

  print('Is the program active? $isActive');
}
