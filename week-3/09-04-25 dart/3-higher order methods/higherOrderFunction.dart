void main() {
  var sampleList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  //Where it is used for filtering.
  var evenNumbers = sampleList.where((item) => item.isEven);
  print(evenNumbers); //filters out odd number
  var oddNumbers = sampleList.where((item) => !item.isEven);
  print(oddNumbers); //filters out even number

  //Map is used for manipulation
  var squared = sampleList.map((item) => item * item);
  print(squared); //returns the square of the number

  //forEach is used for iteration
  var values = sampleList.forEach((item) => {print(item)}); //iterates the list

  //Spread operator
  var list1 = [1, 2, 3, 4, 5];
  var list2 = [6, 7, 8, 9];

  var newList = [-2, -1, 0, ...list1, ...list2];
  print(newList);

  //null values
  List? listA = null;
  List listB = [6, 7, 8, 9];

  List listC = [-2, -1, 0, ...?listA, ...listB];
  print(listC);
}
