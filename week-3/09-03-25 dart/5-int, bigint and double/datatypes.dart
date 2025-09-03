void main() {
  int a = 25;
  int b = -42;

  print('a.isEven: ${a.isEven}');
  print('a.isOdd: ${a.isOdd}');

  BigInt bigA = BigInt.parse('123456789123456789123456789');
  BigInt bigB = BigInt.from(7892027335);

  print('bigA = $bigA');
  print('bigB = $bigB');
  print('bigA + bigB = ${bigA + bigB}');
  print('bigA - bigB = ${bigA - bigB}');
  print('bigA * bigB = ${bigA * bigB}');
  print('bigA.isEven: ${bigA.isEven}');

  double x = 3.14159;
  print('x.round(): ${x.round()}');
  print('x.floor(): ${x.floor()}');
  print('x.ceil(): ${x.ceil()}');
  print('x.truncate(): ${x.truncate()}');
  print('x.abs(): ${x.abs()}');
}
