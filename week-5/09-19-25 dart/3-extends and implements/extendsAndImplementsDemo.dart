abstract class BankUser {
  String username;

  BankUser(this.username);

  void login();

  void logout() {
    print('$username logged out');
  }
}

class BankEmployee extends BankUser {
  BankEmployee(String username) : super(username);

  @override
  void login() {
    print('Employee $username logged in with staff portal.');
  }

  void approveLoan() {
    print('Employee $username approved a loan.');
  }
}

class Customer implements BankUser {
  @override
  String username;

  Customer(this.username);

  @override
  void login() {
    print('Customer $username logged in with mobile banking.');
  }

  @override
  void logout() {
    print('Customer $username logged out of mobile banking.');
  }

  void requestLoan() {
    print('Customer $username requested a loan.');
  }
}

void main() {
  BankEmployee employee = BankEmployee('Employee');
  employee.login();
  employee.approveLoan();
  employee.logout();

  Customer customer = Customer('Customer');
  customer.login();
  customer.requestLoan();
  customer.logout();
}
