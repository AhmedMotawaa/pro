/* Loops, Conditional Statements, and Strings
Write a program that:
- Accepts a string from the user.
- Counts the occurrences of each vowel (a, e, i, o, u) in the string using a `Map<String, int>`.
- Ignores case (e.g., count A and a together).
- Prints the vowels and their counts */


import 'dart:io';

void main() {
  print("Enter a string:");
  String input = stdin.readLineSync()!;

  Map<String, int> vowelCounts = countVowels(input);

  print("Vowel counts:");
  vowelCounts.forEach((vowel, count) {
    print("$vowel: $count");
  });
}

Map<String, int> countVowels(String input) {
  Map<String, int> vowels = {'a': 0, 'e': 0, 'i': 0, 'o': 0, 'u': 0};

  String lowerCaseInput = input.toLowerCase();

  for (int i = 0; i < lowerCaseInput.length; i++) {
    String char = lowerCaseInput[i];

    if (vowels.containsKey(char)) {
      vowels[char] = vowels[char]! + 1;
    }
  }

  return vowels;
}
