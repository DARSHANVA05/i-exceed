import 'dart:convert';
import 'dart:io' show File, stdin, Platform;
import "package:path/path.dart" as p;

void main() async {

  final scriptDir = p.dirname(Platform.script.toFilePath());
  final filePath = p.join(scriptDir, 'currencies.json');
  final file = File(filePath);
  final contents = await file.readAsString();
  Map<String, dynamic> currencyMap = jsonDecode(contents);

  int indianDecimals = currencyMap["India"]["decimals"];
  int icelandDecimals = currencyMap["Iceland"]["decimals"];
  int kuwaitDecimals = currencyMap["Kuwait"]["decimals"];

  print(
    "India deposit : " +
        calculate("+", 29.74, 35.87, indianDecimals).toString(),
  );
  print(
    "India withdraw : " +
        calculate("-", 294.12, 35.87, indianDecimals).toString(),
  );

  print(
    "kuwait deposit: " +
        calculate("+", 29.745, 35.867, kuwaitDecimals).toString(),
  );
  print(
    "kuwait withdraw: " +
        calculate("-", 294.126, 35.787, kuwaitDecimals).toString(),
  );

  print(
    "iceland deposit: " + calculate("+", 294, 35, icelandDecimals).toString(),
  );
  print(
    "iceland withdraw: " + calculate("-", 294, 35, icelandDecimals).toString(),
  );

  print("Enter a country");
  String? country = stdin.readLineSync();

  if (country == null || !currencyMap.containsKey(country)) {
    print("Country not found in currency map.");
    return;
  }

  print('No of decimal places : ${currencyMap[country]["decimals"]}');

  print("Enter number 1:");
  num? num1 = num.tryParse(stdin.readLineSync() ?? '');

  print("Enter number 2:");
  num? num2 = num.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print("Invalid number entered.");
    return;
  }

  print(
    "$country deposit: " +
        calculate("+", num1, num2, currencyMap[country]["decimals"]).toString(),
  );
  print(
    "$country withdraw: " +
        calculate("-", num1, num2, currencyMap[country]["decimals"]).toString(),
  );
}

num calculate(String operand, num value1, num value2, int smallestunit) {
  num result;
  switch (operand) {
    case "+":
      result = (smallestunit == 0)
          ? (value1 + value2)
          : (smallestunit == 2)
          ? (value1 * 100 + value2 * 100) / 100
          : (value1 * 1000 + value2 * 1000) / 1000;
      break;
    case "-":
      result = (smallestunit == 0)
          ? (value1 - value2)
          : (smallestunit == 2)
          ? (value1 * 100 - value2 * 100) / 100
          : (value1 * 1000 - value2 * 1000) / 1000;
      break;
    default:
      result = 0;
  }
  return result;
}
