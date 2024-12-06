/* 1. Collections, String Manipulation, and Functions
Write a program that:
- **Accepts a list of sentences:**
```dart
List<String> sentences = [
"Dart is awesome",
"Flutter is amazing",
"I love programming"
];
```
- **Defines a function `countWords(List<String> sentences)` that:**
- Counts the total number of words across all sentences.
- Returns the count.
- Prints the total word count and the longest word in the list.
--- */

void main() {
  List<String> sentences = [
    "Dart is awesome",
    "Flutter is amazing",
    "I love programming"
  ];

  int totalWords = countWords(sentences);
  print("Total Word Count: $totalWords");
  print("Longest Word: ${findLongestWord(sentences)}");
}

int countWords(List<String> sentences) {
  int wordCount = 0;

  for (String sentence in sentences) {
    List<String> words = sentence.split(' ');
    wordCount += words.length;
  }

  return wordCount;
}

String findLongestWord(List<String> sentences) {
  String longestWord = '';

  for (String sentence in sentences) {
    List<String> words = sentence.split(' ');
    for (String word in words) {
      if (word.length > longestWord.length) {
        longestWord = word;
      }
    }
  }

  return longestWord;
}
