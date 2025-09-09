abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  void pay(double amount) {
    print("Paying ${amount.toStringAsFixed(2)} using Credit Card.");
  }
}

class UPI extends PaymentMethod {
  void pay(double amount) {
    print("Paying ${amount.toStringAsFixed(2)} using UPI.");
  }
}

void main() {
  PaymentMethod payment1 = CreditCard();
  payment1.pay(150.00); 

  PaymentMethod payment2 = UPI();
  payment2.pay(75.50); 
}
