abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

abstract class Sleepable {
  void sleep();
}

class Robot implements Workable {
  @override
  void work() {
    print("Robot is working.");
  }
}

class Human implements Workable, Eatable, Sleepable {
  @override
  void work() {
    print("Human is working.");
  }

  @override
  void eat() {
    print("Human is eating.");
  }

  @override
  void sleep() {
    print("Human is sleeping.");
  }
}

main() {
  Human human = Human();
  human.eat();
  human.work();
  human.sleep();

  Robot robo = Robot();
  robo.work();
}
