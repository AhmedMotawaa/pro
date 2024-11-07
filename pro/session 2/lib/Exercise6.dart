import 'dart:io';

void main() {
  print('first number');
  int number1 = int.parse(stdin.readLineSync()!);
  print('second number');
  int number2 = int.parse(stdin.readLineSync()!);

  if (number1 == number2) {
    print('the number are equal');
  } else if (number1 > number2) {
    print('the frist number');
  } else {
    print('the second number');
  }
  ;
}
