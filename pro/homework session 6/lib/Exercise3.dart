/* Null Safety, Strings, and Higher-Order Functions
Write a function `formatNames(List<String?> names)` that:
- Removes null values from the list.
- Capitalizes the first letter of each name using String methods.
- Returns the formatted list as a single string, with names separated by commas.
Test it with the list `["john", null, "alice", "bob"]`.
Goal: Understand null safety, string manipulation, and higher-order functions. */


String formatNames(List<String?> names) {
  List<String> nonNullNames = names.where((name) => name != null).cast<String>().toList();

  List<String> formattedNames = nonNullNames.map((name) {
    return name[0].toUpperCase() + name.substring(1).toLowerCase();
  }).toList();

  return formattedNames.join(", ");
}

void main() {
  List<String?> names = ['ahmed',null,'mohamed','mahmoud','ali',null];

  String result = formatNames(names);
  print(result);
}
