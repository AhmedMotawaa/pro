/* Lists, Maps, and Conditional Statements
Write a program that:
- Takes a list of student scores:
```dart
List<int> scores = [85, 72, 90, 66, 78];
```
- Maps the scores to grades using the following criteria:
- 90+ = "A"
- 80-89 = "B"
- 70-79 = "C"
- Below 70 = "D"
- Stores the results in a `Map<int, String>` where the key is the score, and the value is the grade.
- Prints the scores and their corresponding grades. */

void main() {
  List<int> scores = [85, 72, 90, 66, 78];

  Map<int, String> scoreGrades = {};

  for (int score in scores) {
    if (score >= 90) {
      scoreGrades[score] = "A";
    } else if (score >= 80) {
      scoreGrades[score] = "B";
    } else if (score >= 70) {
      scoreGrades[score] = "C";
    } else {
      scoreGrades[score] = "D";
    }
  }

  print("Scores and their corresponding grades:");
  scoreGrades.forEach((score, grade) {
    print("Score: $score, Grade: $grade");
  });
}
