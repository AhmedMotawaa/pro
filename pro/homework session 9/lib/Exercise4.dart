/* Null Safety, Optional Parameters, and Logical Operators
Write a program that:
- **Defines a class `User` with:**
- Properties: `String? name`, `int? age`, and `String? email`.
- **A method `isAdult()` that:**
- Returns `true` if the age is 18 or older; otherwise, returns `false`.
- Checks for null values using the null-aware operator (`??`).
- **In `main()`, create a `User` object with only the name and email fields, leaving age as null.**
- **Print whether the user is an adult or not.**
--- */

class User {
  String? name;
  int? age;
  String? email;

  bool isAdult() {
    return (age ?? 0) >= 18;
  }
}

void main() {
  User user = User()
    ..name = "Ahmed"
    ..email = "ahmed@example.com";

  print("User Name: ${user.name}");
  print("User Email: ${user.email}");
  print("User Age: ${user.age ?? "Not provided"}");

  if (user.isAdult()) {
    print("The user is an adult.");
  } else {
    print("The user is not an adult.");
  }
}
