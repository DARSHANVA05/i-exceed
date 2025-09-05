class Person {
  String? name;
  int? age;

  // Parameterised constructor
  Person._({this.name, this.age = 0});

  factory Person.toCall(String name, int age) {
    return Person._(name: name, age: age);
  }

  displayDetails() {
    print("$name is of age $age.");
  }
}

void main() {
  Person person1 = Person.toCall("Ederson", 15);
  person1.displayDetails();

  Person person2 = Person.toCall("Ronaldo", 25);
  person2.displayDetails();
}
