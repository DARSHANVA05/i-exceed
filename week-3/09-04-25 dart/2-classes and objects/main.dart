class Student {
  String name;
  int age;
  Map<String, int> _marks = {
    "subject1": 20,
    "subject2": 23,
  }; //private variables accessed by public means

  Student(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }

  void displayMarks() {
    _marks.forEach((subject, marks) {
      print('$subject: $marks');
    });
  }
}

void main() {
  Student s1 = Student('Alice', 25);
  Student s2 = Student('Bob', 30);

  s1.sayHello();
  s2.sayHello();

  s1.displayMarks();
}
