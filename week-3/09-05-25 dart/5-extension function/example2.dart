//extension can be applied to built in functions.
extension PersonExtended on String {
  String transformString(String sentence, String find, String replace) {
    return sentence.replaceAll(find, replace);
  }
}

void main() {
  String sentence = "He is in our palce.";
  print(sentence.transformString(sentence, "is", "was"));
}
