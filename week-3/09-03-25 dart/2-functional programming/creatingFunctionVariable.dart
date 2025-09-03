main() {
  var displayFunction = displayDetails;
  displayFunction(name: "darshan", age: 25);
}

void displayDetails({required String name, required int age}) {
  print("$name is of age $age.");
  var city = displayCity;
  city(name, "Bengaluru");
}

void displayCity(String name, String city) {
  print("$name is from $city.");
}
