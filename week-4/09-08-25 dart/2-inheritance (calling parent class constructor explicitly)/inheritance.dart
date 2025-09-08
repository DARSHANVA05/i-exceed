class Employee {
  String? name;
  int? age;

  Employee(this.name, this.age) {
    print("Employee constructor: $name, $age");
  }
}

class Manager extends Employee {
  String? department;

  Manager(String? name, int? age, this.department) : super(name, age) {
    print("Manager constructor: $name, $age, Department: $department");
  }
}

void main() {
  Manager manager = Manager("Darshan", 30, "Engineering");
}
