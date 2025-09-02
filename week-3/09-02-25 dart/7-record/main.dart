main() {
  var sampleData = (
    "darshan",
    age: 23,
    team: "MCFC",
    designation: "SE-Trainee",
    hobbies: ("football", "tennis"),
    "i-exceed",
  );

  print(sampleData.$1);
  print(sampleData.hobbies.$1); //accessing tuple value inside a tuple.
  print("${sampleData.$1} likes to play ${sampleData.hobbies.$1}");

  print(sampleData.$2);
}
