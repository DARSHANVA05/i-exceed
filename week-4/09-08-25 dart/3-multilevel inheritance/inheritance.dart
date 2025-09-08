// Base class
class Animal {
  Animal(String name) {
    print("Animal: $name");
  }
}

// Intermediate class
class Mammal extends Animal {
  Mammal(String name, String type) : super(name) {
    print("Mammal type: $type");
  }
}

// Derived class
class Human extends Mammal {
  Human(String name, String type, int age) : super(name, type) {
    print("Human age: $age");
  }
}

void main() {
  Human person = Human("human being", "Warm-blooded", 25);
}
