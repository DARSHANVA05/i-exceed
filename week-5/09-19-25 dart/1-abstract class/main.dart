import 'abstractClasses.dart';

void main() {
  Account savingsAccount = SavingsAccount("Erling haaland", "1001", 100000);
  savingsAccount.createAccount();
  savingsAccount.displayAccountDetails();
  savingsAccount.applyInterest();
  savingsAccount.displayBalance();

  Account currentAccount = CurrentAccount("Donnarumma", "1002", 150000);
  currentAccount.createAccount();
  currentAccount.displayAccountDetails();
  currentAccount.applyInterest();
  currentAccount.displayBalance();
}
