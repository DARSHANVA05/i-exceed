void main() {
  //literal
  Map mapByLiteral = {"name": "Darshan", "age": 23};
  Map<String, String> mapByType = {
    "Erling Haaland": "MCFC",
    "Khusanov": "MCFC",
  };
  print(mapByLiteral);
  print(mapByType);

  //constructor
  Map<String, int> constructorMap = Map();
  constructorMap.addAll({"Erling Haaland": 24, "Khusanov": 22});
  constructorMap["pep"] = 50;
  constructorMap["Kevin De Bruyne"] = 30;
  print(constructorMap);

  // .from()
  var mapFromOriginal = {'city': "bengaluru", 'state': "karnataka"};
  var mapFrom = Map.from(mapFromOriginal);
  print(mapFrom);

  // .of()
  var mapOfOriginal = {'city': "bengaluru", 'state': "karnataka"};
  Map mapOf = Map.of(mapOfOriginal);
  print(mapOf);

  //Map entries
  var mapEntries = {'x': 10, 'y': 20};
  var mapEntriesDemo = Map.of(mapEntries);
  print(mapEntriesDemo);

}

