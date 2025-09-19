abstract class Account {
  late String accountHolder;
  late String accountNumber;

  Account(this.accountHolder, this.accountNumber);

  void displayAccountDetails() {
    print("Account holder: ${accountHolder}");
    print("Account number: ${accountNumber}");
  }

  void createAccount();
  void displayBalance();
  void applyInterest();
}

class SavingsAccount extends Account {
  static String accountType = "Savings account";
  late double _balance;
  static double interest = 0.7;

  SavingsAccount(String accountHolder, String accountNumber, this._balance)
    : super(accountHolder, accountNumber);

  void createAccount() {
    print(
      "${accountType} account created for ${accountHolder} (${accountNumber})",
    );
  }

  void displayBalance() {
    print("${accountHolder} (${accountNumber}) : ${_balance}");
  }

  void applyInterest() {
    print("Interest of ${_balance * interest} is appiled.");
    _balance = _balance + _balance * interest;
  }
}

class CurrentAccount extends Account {
  static String accountType = "Current account";
  late double _balance;
  static double interest = 0.5;

  CurrentAccount(String accountHolder, String accountNumber, this._balance)
    : super(accountHolder, accountNumber);

  void createAccount() {
    print(
      "${accountType} account created for ${accountHolder} (${accountNumber})",
    );
  }

  void displayBalance() {
    print("${accountHolder} (${accountNumber}) : ${_balance}");
  }

  void applyInterest() {
    print("Interest of ${_balance * interest} is appiled.");
    _balance = _balance + _balance * interest;
  }
}
