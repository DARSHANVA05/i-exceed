void main() {
  var times2 = makeMultiplier(2);
  var times5 = makeMultiplier(5);

  print(times2(4));
  print(times5(4));

  var greetPerson1 = greet("Person 1");
  greetPerson1();
}

Function makeMultiplier(int factor) {
  return (int number) => number * factor;
}

Function greet(String name) {
  return () {
    print("Hello $name!");
  };
}
