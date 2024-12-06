/* Nested Loops, Conditional Logic, and String Manipulation
Write a program that:
- **Prints a multiplication table from 1 to 5 using nested loops.**
- **Skips printing results where either multiplier or multiplicand is even.**
- **Formats the output so each result is padded to 4 characters for better alignment.**
### Example Output:
```dart
1 3 5
3 9 15
5 15 25
```
--- */

void main() {
  int maxNumber = 5;

  for (int i = 1; i <= maxNumber; i++) {
    if (i % 2 == 0) continue;

    String row = "";

    for (int j = 1; j <= maxNumber; j++) {
      if (j % 2 == 0) continue;

      row += "${(i * j).toString().padLeft(4)}";
    }

    print(row);
  }
}
