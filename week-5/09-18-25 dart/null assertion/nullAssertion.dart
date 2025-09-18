String ?fetchData() => "Data...";

void main() {
  String? data = fetchData();
  
  /*used when we are assigining a nullable value to a non nullable value, and we are
    sure that the value will not be null.
  */
  String fetchedData = data!;

  print(fetchedData);

}
