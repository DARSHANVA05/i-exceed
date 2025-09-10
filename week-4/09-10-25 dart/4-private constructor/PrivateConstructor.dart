class PrivateConstructor {
  String? name;
  PrivateConstructor._(this.name);

  factory PrivateConstructor.create(String name) {
    return PrivateConstructor._(name);
  }
}

main() {
  PrivateConstructor privateConstructor = PrivateConstructor.create("Darshan");
  print(privateConstructor.name);
}
