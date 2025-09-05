class Person {
  String? name;
  int? age;

  // Parameterised constructor
  Person({this.name, this.age = 0});

  displayDetails() {
    print(this.name);
    print(this.age);
  }
}

void main() {
  Person person1 = Person(name: "person1", age: 15);
  person1.displayDetails();

  Person person2 = Person(name: "person2");
  person2.displayDetails();
}
