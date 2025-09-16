import 'dart:collection';
import 'dart:math';

main(){

  //Maintains insertion order
  LinkedHashSet linkedHashSet = LinkedHashSet();
  linkedHashSet.addAll({1,2,4,6,3,5});
  print(linkedHashSet);

  //sorts the elements.
  SplayTreeSet splayTreeSet = SplayTreeSet();
  splayTreeSet.addAll({1,2,4,6,3,5});
  print(splayTreeSet);

  //sorts the set elements.
  HashSet hashSet = HashSet();
  hashSet.addAll({1,2,4,6,3,5});
  print(hashSet);

  //testing the performance of the sets.
  
  //LinkedHashSet
  final random = Random();
  LinkedHashSet linkedHashSet1 = LinkedHashSet();
  int start = DateTime.now().millisecond;
  void addRandomNumber() => linkedHashSet1.add(random.nextInt(100));
  for (int i = 0; i < 100000; i++) {
    addRandomNumber();
  }
  int end = DateTime.now().millisecond;
  linkedHashSet1.forEach((val)=>val);
  print("LinkedHashSet: ${end-start}");


  //SplayTreeSet
  SplayTreeSet splayTreeSet1 = SplayTreeSet();
  start = DateTime.now().millisecond;
  void addRandomNumber1() => splayTreeSet1.add(random.nextInt(100));
  for (int i = 0; i < 100000; i++) {
    addRandomNumber1();
  }
  end = DateTime.now().millisecond;
  linkedHashSet1.forEach((val)=>val);
  print("SplayTreeSet: ${end-start}");
  
  //HashSet
  HashSet hashSet1 = HashSet();
  start = DateTime.now().millisecond;
  void addRandomNumber2() => hashSet1.add(random.nextInt(100));
  for (int i = 0; i < 100000; i++) {
    addRandomNumber2();
  }
  end = DateTime.now().millisecond;
  hashSet1.forEach((val)=>val);
  print("Hash Set: ${end-start}");


}