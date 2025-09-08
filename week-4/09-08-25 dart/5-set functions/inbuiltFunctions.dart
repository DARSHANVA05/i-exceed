void main() {
  Set<String> programmingLanguages = {"java", "js", "dart", "go"};
  print(programmingLanguages);

  List languageList = List.from(programmingLanguages);
  print(languageList.runtimeType);

  Set<String> copiedLanguages = {};
  copiedLanguages.addAll(programmingLanguages);
  print(copiedLanguages);

  if (programmingLanguages.containsAll(["java", "dart"])) {
    print("Set contains java and dart.");
  } else {
    print("Set does not contain java and dart");
  }

  print("lookup: ${programmingLanguages.lookup("go")}");

  programmingLanguages.forEach((lang) => print(lang.toUpperCase()));

  var upperCaseLanguages = programmingLanguages.map(
    (lang) => lang.toUpperCase(),
  );
  print(upperCaseLanguages);

  var jsStartingLanguages = programmingLanguages.where(
    (lang) => lang.startsWith("j"),
  );
  print(jsStartingLanguages);

  Set<List<String>> food = {
    ["apple", "mango"],
    ["biriyani", "paneer butter masala"],
    ["onion dosa"],
  };
  print(food.expand((list) => list));
}
