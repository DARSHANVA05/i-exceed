void main() {
  doOperation(4, 2, (x, y) => x + y);
  doOperation(4, 2, (x, y) => x * y);

  var message1 = greet("hello");
  message1("darshan");
}

void doOperation(int a, int b, int Function(int, int) operation) {
  int result = operation(a, b);
  print("Result: $result");
}

Function greet(String message) {
  return (String name) {
    print("$message $name.");
  };
}
