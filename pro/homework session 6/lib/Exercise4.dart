/* Create a class `BankAccount` with:
- Properties: `String accountHolder`, `double balance`.
- A constructor to initialize the properties.
- Methods:
- `deposit(double amount)` to add to the balance.
- `withdraw(double amount)` to subtract from the balance (ensure sufficient funds).
- `getDetails()` to print the account holder's name and balance.
Create an instance, perform some transactions, and print the account details.
Goal: Learn OOP concepts like constructors, methods, and object manipulation. */

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder,this.balance);

void deposit(double amount) {
    balance += amount;
    print("${amount.toStringAsFixed(2)}");
  }
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("${amount.toStringAsFixed(2)}");
    } else {
      print("${balance.toStringAsFixed(2)}");
    }
  }

  void getDetails() {
    print(" $accountHolder");
    print("${balance.toStringAsFixed(2)}");
  }
}

void main() {
  BankAccount account = BankAccount("Ahmed", 1000);

  account.deposit(500);
  account.withdraw(700);
  account.getDetails();
}
