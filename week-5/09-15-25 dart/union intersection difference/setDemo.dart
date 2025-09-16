void main() {
  Set<String> set1 = {"item1", "item2", "item3"};
  Set<String> set2 = {"item1", "item4", "item5"};

  Set<String> unionSet = set1.union(set2);
  print(unionSet);

  Set<String> intersectionSet = set1.intersection(set2);
  print(intersectionSet);

  Set<String> differenceSet = set1.difference(set2);
  print(differenceSet);

  /* Set attributes */
  print("set1.length: ${set1.length}");
  print("set1.first: ${set1.first}");
  print("set1.last: ${set1.last}");
  print("set1.isEmpty: ${set1.isEmpty}");
  print("set1.isNotEmpty: ${set1.isNotEmpty}");

  //returns the single element if the set has only one element.
  print(intersectionSet.single);

  
}
