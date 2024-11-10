/* Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values. */

void main() {
  List<String> groceryList = [];

  addItem(groceryList, item: 'Milk');
  addItem(groceryList, item: 'Bread');
  addItem(groceryList, item: 'Eggs');
  
  print("Grocery List:");
  displayItems(groceryList);

  removeItem(groceryList, item: 'Bread');

  print("\nUpdated Grocery List:");
  displayItems(groceryList);
}

void addItem(List<String> list, {required String? item}) {
  if (item != null && item.isNotEmpty) {
    list.add(item);
    print("$item added");
  } else {
    print("Error: null or empty.");
  }
}

void removeItem(List<String> list, {required String? item}) {
  if (item != null && list.contains(item)) {
    list.remove(item);
    print("$item ");
  } else {
    print("Error: Item does not exist in the list or is null.");
  }
}

void displayItems(List<String> list) {
  if (list.isEmpty) {
    print("The grocery list is empty.");
  } else {
    for (var i = 0; i < list.length; i++) {
      print("${i + 1}. ${list[i]}");
    }
  }
}
