void main() {

  Student student = Student();
  student.setStudent(
    "Darshan V A",
    10,
    22,
    "Computer science",
  ); //values are not assigned to object

  student.displayStudent();

  student.setStudentThis(
    "Darshan V A",
    10,
    22,
    "Computer science",
  ); //values are assigned to object

  student.displayStudent();
}

class Student {
  String? name;
  int? rollNo;
  int? age;
  String? subject;

  //The values will not be assigned to the instance variables.
  void setStudent(String name, int rollNo, int age, String subject) {
    name = name;
    rollNo = rollNo;
    age = age;
    subject = subject;
  }

  //The values will be assigned to the instance variables.
  void setStudentThis(String name, int rollNo, int age, String subject) {
    this.name = name;
    this.rollNo = rollNo;
    this.age = age;
    this.subject = subject;
  }

  void displayStudent() {
    print("$name ($rollNo) is of $age years, and studies $subject.");
  }
}
