class Company {
  String companyName = "i-exceed";

  String displayCompany() => companyName;
}

class Employee extends Company {
  String? name;
  int? age;
  int? id;

  Employee(this.name, this.age, this.id);

  void displayDetails() {
    print("$name ($id) is $age years old and works at ${displayCompany()}.");
  }
}

void main() {
  Employee e1 = Employee("Darshan V A", 23, 10);
  e1.displayDetails();
}
