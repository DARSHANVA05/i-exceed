class FDAccount {
  String accountHolder;
  double principleAmount;
  late double
  interest; //this variable can only be used once it is initialised.

  FDAccount(this.accountHolder, this.principleAmount) {
    assignInterest(principleAmount);
  }

  //rate of interest will be assigned as per principle amount.
  void assignInterest(double principleAmount) {
    if (principleAmount < 100000) {
      this.interest = 0.7;
    } else if (principleAmount < 1000000) {
      this.interest = 0.6;
    } else {
      this.interest = 0.55;
    }
  }

  void displayDetails() {
    print("Account holder: ${accountHolder}");
    print(
      "Amount on maturity(1 year):${principleAmount * interest + principleAmount}",
    );
  }
}

void main() {
  var accountHolder1 = FDAccount("Darshan V A", 50000);
  accountHolder1.displayDetails();

  var accountHolder2 = FDAccount("Erling Haaland", 200000);
  accountHolder2.displayDetails();

  var accountHolder3 = FDAccount("Kevin", 1500000);
  accountHolder3.displayDetails();
}
