class BankAccount {
  late String accountHolder;
  late String address;
  late String accountType;
  late double interest;

  BankAccount(
    this.accountHolder,
    this.address,
    this.accountType,
    this.interest,
  );

  BankAccount.SavingsAccount(String accountHolder, String address)
    : this(accountHolder, address, "Savings account", 7.0);

  BankAccount.CurrentAccount(String accountHolder, String address)
    : this(accountHolder, address, "Current account", 6.5);

  BankAccount.InternationalAccount(String accountHolder, String address)
    : this(accountHolder, address, "International account", 6.0);

  void displayDetails() {
    print("Account holder: ${accountHolder}");
    print("Account type: ${accountType}");
    print("Address: ${address}");
    print("Interest: ${interest}");
  }
}

void main() {
  var accountHolder1 = BankAccount.SavingsAccount("Darshan V A", "Bengaluru");
  accountHolder1.displayDetails();

  var accountHolder2 = BankAccount.CurrentAccount("Erling Haaland", "Norway");
  accountHolder2.displayDetails();

  var accountHolder3 = BankAccount.InternationalAccount(
    "Kevin De Bruyne",
    "Belgium",
  );
  accountHolder3.displayDetails();
}
