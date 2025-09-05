class Person {
  String? name;
  int? age;

  // Parameterised constructor
  Person(this.name, this.age);

  displayDetails() {
    print(this.name);
    print(this.age);
  }
}

class Student {
  String? name;
  int? age;

  Student({String? name, int? age}) {
    this.name = name;
    this.age = age;
  }

  displayDetails() {
    print(this.name);
    print(this.age);
  }
}

void main() {
  Person person1 = Person("person1", 15);
  person1.displayDetails();

  Student s1 = Student(name: "student 1", age: 10);
  s1.displayDetails();
}
