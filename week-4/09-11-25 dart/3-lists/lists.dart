main() {
  var demoList = ["java", "c", "dart", "javascript"];

  //adding
  demoList.add("c++");
  demoList.addAll(["rust", "kotlin"]);
  demoList.insert(3, "python");
  print(demoList);

  //deleting
  print("before removing: $demoList");
  demoList.removeAt(3);
  demoList.remove("rust");
  print("after removing: $demoList");

  //searching
  print("demoList.indexOf(): ${demoList.indexOf("java")}");
  print("demoList.contains(): ${demoList.contains("java")}");

  //sorting
  demoList.sort();

  /* traversal is widely done using for loop, for in and forEach method.*/
  for (int i = 0; i < demoList.length; i++) {
    print(demoList[i]);
  }

  for (var i in demoList) {
    print(i);
  }

  demoList.forEach((i) => print(i));

  //map
  var mapList = demoList.map((value) => value.toUpperCase());
  print(mapList);

  //filter using where
  var filteredList = demoList.where((i) => i.contains("java"));
  print(filteredList);

  //spread operator
  var emptyList = null;
  var newList = [...?demoList, ...?emptyList, ...?mapList, ...?filteredList];
  print(newList);
}
