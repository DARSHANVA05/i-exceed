main() async {
  print("In main function, getting data...");
  await getData().then((val) => {print("fetched data: $val")});
  print("Fetching completed.");
}

Future<String> getData() {
  print("Waiting in future function...");
  return Future.delayed(Duration(seconds: 5), () => "Data");
}
