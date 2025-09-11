void main() {
  //   int maxIntValue = 9223372036854775807;
  //   int minIntValue = -9223372036854775808;
  //   print("maximum value of int: $maxIntValue");
  //   print("minimum value of int: $minIntValue");

  double doubleValue = 17.3668;
  print(doubleValue);
  print(doubleValue.runtimeType);

  BigInt bigIntValue = BigInt.from(36);
  print(bigIntValue.bitLength);
  print(bigIntValue.isEven);
  print(bigIntValue.runtimeType);

  /*num: Super class of int and double. can change the value between int and           double*/
  num a = 10;
  a = 10.34;
  num b = 20.32;
  b = 20;
  print(a.runtimeType); //returns the type as int
  print(b.runtimeType); //returns the type as double

  /*var: type is infered from the assigned value,
         once infered the type can't be changed.*/

  var variable = 10;
  // variable = 3.14;         this is not allowed.
  var name = "darshan";
  // name = 01;               this is not allowed.
  print(variable.runtimeType);
  print(name.runtimeType);

  /* dynamic: type is infered everytime when the new value is assigned*/
  dynamic x = 10;
  print(x.runtimeType);
  x = 2.65;
  print(x.runtimeType);
  x = "darshan";
  print(x.runtimeType);
}
