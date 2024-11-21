/* Write a function `processNumbers` that:
- Accepts a list of integers.
- Filters out numbers less than 5.
- Squares each remaining number.
- Returns the sum of the squared numbers.
Use the function with the list `[2, 4, 6, 8, 10]` and print the result.
Goal: Learn to work with collections, loops, and filtering conditions. */

void main() {
  List<int> numbers = [2, 4, 6, 8, 10];

  int result = processNumbers(numbers);
  print("The result is: $result");
}

int processNumbers(List<int> numbers) {
  List<int> filteredNumbers = numbers.where((num) => num >= 5).toList();

  List<int> squaredNumbers = filteredNumbers.map((num) => num * num).toList();

  int sum = squaredNumbers.reduce((a, b) => a + b);

  return sum;
}

