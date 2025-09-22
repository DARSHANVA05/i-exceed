mixin Logger on BankAccount {
  void logger() {
    print("Available balance: ${balance}");
  }
}

class BankAccount {
  late double balance = 0;
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient balance.");
    }
  }
}

class SavingsAccount extends BankAccount with Logger {}

void main() {
  SavingsAccount savingsAccount = SavingsAccount();
  savingsAccount.deposit(100000);
  savingsAccount.logger();
  savingsAccount.withdraw(5000);
  savingsAccount.logger();
}
