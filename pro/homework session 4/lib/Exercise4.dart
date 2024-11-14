/* Lists, Sets, Maps
Exercise:
- Create a list of numbers, add a few elements, remove one, and display the final list.
- Create a set with some duplicate elements and print the set to show that duplicates are removed.
- Create a map with keys as student names and values as grades. Print a student's grade by accessing their name in
the map. */


void main() {
  List<int> numbers = [1, 2, 3]; 
  numbers.add(4);               
  numbers.add(5);
  numbers.remove(2);            
  print("Final list: $numbers");

  Set<String> fruits = {'apple', 'banana', 'apple', 'orange', 'banana'};
  print("Set with duplicates removed: $fruits");

  Map<String, double> grades = {
    'Alice': 85.5,
    'Bob': 92.0,
    'Charlie': 78.0
  };
  print("Alice's grade: ${grades['Alice']}");
}
