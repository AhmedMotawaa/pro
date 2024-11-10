/* Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result. */


import 'dart:io';

void main() {
  int lowerLimit = 10;
  int highLimit = 20;

  print('Please enter a number:');
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null) {
    print('Invalid input. Please enter a valid number.');
  } else {
    if (number >= lowerLimit && number <= highLimit) {
      print('$lowerLimit to $highLimit.');
    } else {
      print('$lowerLimit to $highLimit.');
    }
  }
}

