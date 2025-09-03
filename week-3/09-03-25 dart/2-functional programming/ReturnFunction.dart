void main() {
  var displayFunction = displayDetails;
  var resultFunction = displayFunction(name: "darshan", age: 25);
  resultFunction(); // Now this prints the message
}

Function displayDetails({required String name, required int age}) {
  String showDetails() {
    return "$name is of age $age";
  }

  return showDetails;
}
