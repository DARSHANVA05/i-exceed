class Airplane {
  int noOfSeats = 200;
  void startEngine() {
    print("Engine started...");
  }
  void planeDetails(){
    print("After adding new seats: $noOfSeats seats.");
  }
}

/* This mixin is allocated specifically only for Aeroplane class
  This mixin has access to the variables of Aeroplane methods and variables*/
mixin Flyable on Airplane{
  void fly(){
    startEngine();
    print("Flying...");
    print("This airplane has $noOfSeats seats.");
    noOfSeats = noOfSeats+10;
    planeDetails();
  }
}

class Airbus extends Airplane with Flyable{}


main(){

  Airbus airbusA380 = Airbus();
  airbusA380.fly();

}