class DemoClass {
  static double interest = 0.8;
  double _balance;

  DemoClass(this._balance);

  DemoClass createAccount() {
    print("Account created.");
    return this;
  }

  DemoClass deposit(double amount) {
    _balance = _balance + amount;
    print("${amount} deposited.");
    print("Balance: ${_balance}");
    return this;
  }

  DemoClass applyInterest() {
    _balance = _balance * interest + _balance;
    print("Balance: ${_balance} after applying interest(${interest * 10}%).");
    return this;
  }

  DemoClass withdraw(double amount) {
    (_balance >= amount)
        ? {_balance = _balance - amount}
        : print("Insufficient balance.");
    print("Balance: ${_balance}");
    return this;
  }

  void getBalance() {
    print("Balance: ${_balance}");
  }
}
