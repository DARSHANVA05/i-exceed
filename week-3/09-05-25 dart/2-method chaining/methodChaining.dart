void main() {
  Student student = Student();
  student
      .setStudent("Darshan V A", 10, 22, "Computer science")
      .displayStudent()
      .reset();
}

class Student {
  String? name;
  int? rollNo;
  int? age;
  String? subject;

  Student setStudent(String name, int rollNo, int age, String subject) {
    this.name = name;
    this.rollNo = rollNo;
    this.age = age;
    this.subject = subject;
    print(this.hashCode);
    return this;
  }

  Student displayStudent() {
    print("$name ($rollNo) is of $age years, and studies $subject.");
    print(this.hashCode);
    return this;
  }

  Student reset() {
    this.name = null;
    this.rollNo = null;
    this.age = null;
    this.subject = null;
    print(this.hashCode);
    return this;
  }
}
