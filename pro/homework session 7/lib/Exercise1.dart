/* Variables, Collections, and Functions
Write a program that:
- Accepts a list of integers as input.
- Defines a function `calculateStats(List<int> numbers)` that:
- Calculates the sum of all numbers.
- Finds the maximum and minimum values in the list.
- Returns a formatted string with these statistics.
- Call the function with `[5, 12, 7, 3, 18]` and print the result. */


void main(){

 List<int>numbers=[5, 12, 7, 3, 18];
 String stats = calculateStats(numbers);
  print(stats);
}
String calculateStats(List<int> numbers) {
  int sum = numbers.reduce((a, b) => a + b);

  int max = numbers.reduce((a, b) => a > b ? a : b);
  int min = numbers.reduce((a, b) => a < b ? a : b);

  return 'Sum: $sum, Max: $max, Min: $min';
}