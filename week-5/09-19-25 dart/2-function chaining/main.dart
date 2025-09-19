import 'functionChaining.dart';

void main() {
  DemoClass(
    10000,
  ).createAccount().deposit(50000).applyInterest().withdraw(10000).getBalance();

  DemoClass(
    55000,
  ).createAccount().deposit(50000).applyInterest().withdraw(20000).getBalance();
}
