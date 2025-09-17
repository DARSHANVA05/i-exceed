void main() {
  Map<String, double> studentScores = {
    'Alice': 85.0,
    'Bob': 55.0,
    'Charlie': 60.0,
    'Diana': 90.0,
    'Evan': 45.0,
  };

  var curvedScoresEntries = studentScores.entries
      .where((entry) => entry.value >= 60)
      .map((entry) => MapEntry(entry.key, entry.value * 1.1))
      .toList();

  Map<String, double> curvedScores = Map.fromEntries(curvedScoresEntries);

  print(curvedScores);
}
