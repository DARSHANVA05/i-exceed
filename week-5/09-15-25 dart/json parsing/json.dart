import 'dart:convert';

class Employee {
  String? name;
  int? age;
  String? address;
  List<Qualification>? qualificationList;

  Employee(this.name, this.age, this.address, this.qualificationList);

  // Factory constructor to create Employee from JSON
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      json['name'],
      json['age'],
      json['address'],
      (json['qualification'] as List<dynamic>)
          .map((q) => Qualification.fromJson(q))
          .toList(),
    );
  }
}

class Qualification {
  String? degree;

  Qualification(this.degree);

  // Factory constructor to create Qualification from JSON
  factory Qualification.fromJson(Map<String, dynamic> json) {
    return Qualification(json['degree']);
  }
}

void main() {
  String jsonString =
      '{"name": "darshan", "age": 23, "address": "bengaluru", "qualification":[{"degree":"BE"}]}';

  Map<String, dynamic> userMap = jsonDecode(jsonString);

  Employee employee = Employee.fromJson(userMap);

  print('Name: ${employee.name}');
  print('Age: ${employee.age}');
  print('Address: ${employee.address}');
  print('Qualifications:');
  for (var q in employee.qualificationList!) {
    print('- ${q.degree}');
  }
}
