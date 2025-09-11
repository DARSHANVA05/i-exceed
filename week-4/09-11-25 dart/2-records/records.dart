main() {
  var data = ("Darshan V A", 23, "Bengaluru", yoe: 1);
  print("${data.$1} is ${data.$2} old.");
  print("YOE: ${data.yoe}");

  var qualification = getQualification();
  print("Degree: ${qualification.$1}");
  print("Course: ${qualification.$2}");
  print("College: ${qualification.college}");
}

(String, String, {String college}) getQualification() {
  return ("BE", "ISE", college: "AIT");
}
