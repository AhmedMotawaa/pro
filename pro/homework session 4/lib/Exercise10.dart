/* Optional and Named Parameters
Exercise: Write a function displayMessage that takes a required String message, an optional String name, and a named
int repeat with a default value of 1. The function should print the message and the name repeat times. If name is not
provided, it should print the message alone. */

void displayMessage(String message, [String? name], {int repeat = 1}) {
  for (int i = 0; i < repeat; i++) {
    if (name != null) {
      print('$message, $name');
    } else {
      print(message);
    }
  }
}

void main() {
  // Test cases
  displayMessage('Hello');                  
  displayMessage('Welcome', 'Alice');        
  displayMessage('Good Morning', 'John', repeat: 3); 
}
