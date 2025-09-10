main() {
  print("In main function, getting data...");
  getData().then((val) => {print("fetched data: $val")});
  print("In main function, continuing with the main function.");
}

Future<String> getData() {
  print("Waiting in future function...");
  return Future.delayed(Duration(seconds: 5), () => "Data");
}
