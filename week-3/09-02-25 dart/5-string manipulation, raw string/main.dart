void main() {
  String sampleString = "Hello world";

  print("sample message is '$sampleString'");
  print("converting to uppercase: ${sampleString.toUpperCase()}");
  print("String is immutable: $sampleString");

  //Raw String: escape sequences will not be processed.
  String rawString = r"Darshan \t \n V A";
  print(rawString);
}
