main() {
  //types of declaring set.
  Set demoSet1 = {"item1", "item2", "item3", "item4"};

  Set demoSet2 = Set();

  demoSet2.add("item1");
  demoSet2.add("item2");
  demoSet2.add("item3");
  demoSet2.add("item4");

  print("demoSet1: ${demoSet1}");
  print("demoSet2: ${demoSet2}");

  //returning types
  print("demoSet1.runtimeType: ${demoSet1.runtimeType}");
  print("demoSet2.runtimeType: ${demoSet2.runtimeType}");
  var stringSet = <String>{};
  print("stringSet.runtimeType: ${stringSet.runtimeType}");

  //converting list to set
  List demoList1 = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9];
  Set convertedSet1 = Set.from(demoList1);
  print(convertedSet1);

  List demoList2 = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9];
  Set convertedSet2 = Set.unmodifiable(demoList1);
  // convertedSet2.add(90);  not supported
  print(convertedSet2);
}
