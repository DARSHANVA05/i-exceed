class Person {
  String? _name;
  int? _age;

  String? get name => _name;
  int? get age => _age;

  set name(String name) {
    _name = name;
  }

  void setAge(int age) {
    _age = age;
  }
}

extension PersonExtended on Person {
  void displayDetails() {
    print("$name is $age years old.");
  }
}

void main() {
  Person person = Person();
  person.setAge(20);
  print(person.age);

  person.name = "Hardik";
  print(person.name);

  person.displayDetails();
}
