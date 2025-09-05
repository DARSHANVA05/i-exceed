void main() {
  Student student = Student();
  print(student.hashCode);
  student.displayStudent();
}

class Student {
  String? name;
  int? rollNo;
  int? age;
  String? subject;

  Student() {
    this.name = "Darshan";
    this.rollNo = 1000;
    this.age = 23;
    this.subject = "Dart programming";
    print(this.hashCode);
  }

  void displayStudent() {
    print("$name ($rollNo) is of $age years, and studies $subject.");
  }
}
