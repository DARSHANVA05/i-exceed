void main() {
  Map<String, dynamic> items = {
    'C001': 'Savings',
    'C002': 'Checking',
    'C003': 'Business',
  };

  //using for-in
  for (var item in items.entries) {
    print("using for-in ==> ${item.key}: ${item.value}");
  }

  //Using .forEach
  items.forEach((key, value) {
    print("using for-each ==> ${key}: ${value}");
  });

  //using for loop
  for (var i = 0; i < items.entries.toList().length; i++) {
    print(
      "using for-loop ==> ${items.entries.toList()[i].key}: ${items.entries.toList()[i].value}",
    );
  }
}
