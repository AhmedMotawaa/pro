/* Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements. */

import 'dart:io';

void main() {
  print('Please enter a number:');
  
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number == null) {
    print('Invalid input. Please enter a valid number.');
  } else {
    if (number > 0) {
      print('The number is positive.');
    } else if (number < 0) {
      print('The number is negative.');
    } else {
      print('The number is zero.');
    }
  }
}
