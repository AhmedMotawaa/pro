import 'dart:io';

void main() {
  print('enter the score:');
  int score = int.parse(stdin.readLineSync()!);
  if (score >= 50) {
    print("pass");
  } else {
    print('fail');
  }
}
