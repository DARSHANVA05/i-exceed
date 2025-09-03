void main() {
  Student student = new Student("Gopal", 10, new School("SCVK", "Bengaluru"));
  print(student.displayStudent());
}

class Student {
  String name;
  int age;
  School school;

  Student(this.name, this.age, this.school);

  displayStudent() {
    return "$name ($age) studies in ${school.name}";
  }
}

class School {
  String name;
  String address;

  School(this.name, this.address);
}
