main() {

  Player p1 = Player("darshan", 23);
  displayData(p1);

}

//function that returns a record.
String displayData(Player player) {
  return "${player.name} is of age ${player.age}.";
}

class Player {
  String name;
  int age;
  Player(this.name, this.age);
}
