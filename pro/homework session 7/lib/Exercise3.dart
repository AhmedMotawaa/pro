/* Null Safety, Functions, and Higher-Order Functions
Write a function `findLargest(List<int>? numbers)` that:
- Checks if the input list is null or empty. If so, returns null.
- Otherwise, finds and returns the largest number in the list using the `reduce` method.
- Call the function with `[10, 3, 45, 7]` and `null`, and print the results. */


void main() {
  List<int>? numbers1 = [10, 3, 45, 7];
  List<int>? numbers2 = null;

  print("numbers1: ${findLargest(numbers1)}");
  print("numbers2: ${findLargest(numbers2)}");
}

int? findLargest(List<int>? numbers) {
  if (numbers == null || numbers.isEmpty) {
    return null;
  }

  return numbers.reduce((a, b) => a > b ? a : b);
}
