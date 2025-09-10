void main() {
  print("In main function, getting data...");

  getData()
      .then((val) {
        print("fetched data: $val");
      })
      .catchError((e) {
        print("Caught async error: $e");
      });

  print("In main function, continuing with the main function.");
}

Future<String> getData() {
  print("Waiting in future function...");

  // Simulating an async error
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception("Something went wrong in getData()");
  });

  // return Future.delayed(Duration(seconds: 2), () => "Data");
}
