abstract class Animal {
  void eat();
  void sleep() {
    print("Sleeping...");
  }
}

abstract class CanFly {
  void fly();
}

class Bird extends Animal implements CanFly {
  @override
  void eat() {
    print("Bird is eating.");
  }

  @override
  void fly() {
    print("Bird is flying.");
  }
}

void main() {
  // Animal animal = Animal();
  Bird bird = Bird();
  bird.eat();
  bird.sleep();
  bird.fly();

}
