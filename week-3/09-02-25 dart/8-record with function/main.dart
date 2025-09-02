main() {

  var (player, yearsOfExperience) = displayData();
  print('Hi ${player.name} (${player.age}) you are $yearsOfExperience old');
  player.name = "new name";
  print('Hi ${player.name} (${player.age}) you are $yearsOfExperience old');

}

//function that returns a record.
(Player, int) displayData() {
  return (Player("Darshan", 22), 45);
}

class Player {
  String name;
  int age;
  Player(this.name, this.age);
}
