/* 1. Variables, Functions, and Control Flow
Write a program that:
- Prompts the user to input a number.
- Defines a function `isPrime(int number)` to check if the number is prime.
- Calls the function and prints "Prime" if the number is prime, "Not Prime" otherwise.
- Additionally, calculates the factorial of the number using a loop and prints the result.
Goal: Practice control flow, function definition, and loops */

import 'dart:io';

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

int calculateFactorial(int number) {
  int factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  return factorial;
}

void main() {
  stdout.write("Enter a number: ");
  int? userInput = int.tryParse(stdin.readLineSync()!);

  if (userInput == null) {
    print("Invalid input!");
    return;
  }

  if (isPrime(userInput)) {
    print("Prime");
  } else {
    print("Not Prime");
  }

  int factorialResult = calculateFactorial(userInput);
  print("The factorial of $userInput is: $factorialResult");
}
