void main() {

  //Anonymous function assigned to variable.
  var message = () {
    print("Hello world");
  };
  message();

  //Anonymous function that returns a variable.
  var multiply = (int a, int b) => a * b;
  print(multiply(10, 5));

  //Anonymous function in map
  var numbers = [2, 5, 7, 3];
  var squared = numbers.map((n) => n * n).toList();
  print(squared);

  //Anonymous function in forEach
  List<String> demoList = ["mango", "apple", "banana"];
  demoList.forEach((fruit) {
    print('$fruit');
  });

}
