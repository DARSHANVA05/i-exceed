void main() {
  // set using literals
  Set literalSet = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  literalSet.add(10);
  print(literalSet);

  // typed set using literals
  Set<int> typedLiteralSet = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  typedLiteralSet.add(10);
  print(typedLiteralSet);

  // set from constructor
  Set<int> constructorSet = Set();
  constructorSet.add(10);
  constructorSet.add(20);
  constructorSet.add(30);
  print(constructorSet);

  //displaying types
  var demoSet = {};
  print(demoSet.runtimeType); //returns type as map

  //Set.from() this is not type safe
  Set fromSet = Set.from([1, 2, 3, 4, 5, 6, 6, 5]);
  fromSet.add("abcd");
  print(fromSet); //removes duplicates

  //Set.of() this is type safe
  Set<int> ofSet = Set.from([1, 2, 3, 4, 5, 6, 6, 5]);
  print(ofSet); //removes duplicates

  Set fixedSet = Set.unmodifiable([1, 2, 3, 3, 4, 5, 6, 7]);
  print(fixedSet);
  // fixedSet.add(39); gives an error
}
