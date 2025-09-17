main() {
  positionalParameters("Darshan", 23);

  optionalPositionalParameters("Suresh", 50);
  optionalPositionalParameters("Ramesh", 55, "Banglore");

  optionalNamedParameters();
  optionalNamedParameters(name: "Kevin", age: 30);
  optionalNamedParameters(age: 33, name: "MS Dhoni");

  optionalNamedParameters1();
  optionalNamedParameters1(name: "Kevin", age: 30);

  requiredNamedParameters(name: "Hardik pandya", age: 33);
}

void positionalParameters(String name, int age) {
  print("$name is of age $age.");
}

void optionalPositionalParameters(
  String name,
  int age, [
  String place = "india",
]) {
  print("$name is of age $age.He is from $place");
}

void optionalNamedParameters({String name = "unknown", int age = 0}) {
  print("$name is of age $age.");
}

void optionalNamedParameters1({String? name, int? age}) {
  print("${name ?? "no name"} is of age ${age ?? 0}.");
}

void requiredNamedParameters({required String name, required int age}) {
  print("$name is of age $age.");
}
