named constructorclass Person {
  String? name;
  int? age;

  // Default constructor
  Person() {
    this.name = "Darshan";
    this.age = 23;
  }

  // Named constructor
  Person.guest() {
    this.name = 'Guest';
    this.age = 0;
  }

  displayDetails() {
    print(this.name);
    print(this.age);
  }
}

void main() {
  Person person1 = Person(); // using default constructor
  Person person2 = Person.guest(); // using named constructor

  person1.displayDetails();
  person2.displayDetails();
}
