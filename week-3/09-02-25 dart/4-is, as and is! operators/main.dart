void main() {
  Player player = Player("Gigi Donnarumma", 25, "Manchester City FC");

  /* 
   * is and is! are used to check weteher a variable belongs to a particular      type.
   */
  print("player is Player:${player is Player}");
  print("player is! Player:${player is! Player}");

  /* as is use for type casting for the same family. */
  num number = 10;
  int newNumber = number as int;
  print(newNumber.runtimeType);

  print(player.displayPlayer());
}

class Player {
  String name;
  int age;
  String teamName;

  Player(this.name, this.age, this.teamName);

  String displayPlayer() {
    return "${name} (${age}) plays for ${teamName}.";
  }
}
