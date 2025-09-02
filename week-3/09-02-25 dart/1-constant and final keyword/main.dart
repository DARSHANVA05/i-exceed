void main() {
  //const assigned during compile time
  const double PI = 3.1432;
  print(PI);

  //final is for value that is assigned during runtime

  final int age = int.parse(stdin.readLineSync()!);
  print(age);
}
