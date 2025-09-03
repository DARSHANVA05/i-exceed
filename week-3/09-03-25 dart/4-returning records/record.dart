main() {
  var playerDetail = displayData();
  print(
    'Hi ${playerDetail.$1.name} (${playerDetail.$1.age}) you are ${playerDetail.yoe} old',
  );
}

//function that returns a record.
//record that contains named parameters cannot be deserialised directly.
(Player, {int yoe}) displayData() {
  return (Player("Darshan", 22), yoe: 45);
}

class Player {
  String name;
  int age;
  Player(this.name, this.age);
}
