main() async {
  print("In main function, getting data...");
  var data = await getData();
  print("Fetched data: ${data}");
}

Future<String> getData() {
  print("Waiting in future function...");
  return Future.delayed(Duration(seconds: 5), () => "Data");
}
