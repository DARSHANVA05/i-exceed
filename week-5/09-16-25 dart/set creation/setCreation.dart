void main() {
  //by literals
  Set setLiteral1 = {"item1", "item2"};
  Set setLiteral2 = {1, 2, 3, 4, 5};
  print(setLiteral1);
  print(setLiteral2);

  //set by constructor without and with type.
  Set setByConstrutor = Set();
  setByConstrutor.add(10);
  setByConstrutor.add(20);
  setByConstrutor.add(30);
  print(setByConstrutor);

  Set<String> setByType1 = Set();
  setByType1.add("one");
  setByType1.add("two");
  setByType1.add("three");
  print(setByType1);

  Set<String> setByType2 = Set<String>();
  setByType2.add("one");
  setByType2.add("two");
  setByType2.add("three");
  print(setByType2);

  //using .from
  Set demoSet1 = Set.from(["One", "two", "three"]); //converts list to set
  Set demoSet2 = Set.from(setByConstrutor); //
  print(demoSet1);
  print(demoSet2);

  //usuing .of
  Set ofSet = Set.of({1, 2, 3, 4}); //copies the existing set
  print(ofSet);

  //using spread operator
  Set spreadSet = {...demoSet1, ...demoSet2};
  print(spreadSet);

  //unmodifiable set
  Set unmodifiableSet = Set.unmodifiable({"element1", "element2"});
  print(unmodifiableSet);
  // unmodifiableSet.add("element3"); not allowed
  // unmodifiableSet = {"a","b"}; not allowed

  //constant set
  const Set<String> fruits = {'apple', 'banana', 'orange'};
  print(fruits);
}
