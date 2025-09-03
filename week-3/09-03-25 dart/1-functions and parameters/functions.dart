main() {
  positionalParameters("Darshan", 23);

  optionalPositionalParameters("Suresh", 50); //takes default palace as "india".
  optionalPositionalParameters("Ramesh", 55, "Banglore");

  optionalNamedParameters();
  optionalNamedParameters(name: "Kevin", age: 30);
  optionalNamedParameters(age: 33, name: "MS Dhoni");

  requiredNamedParameters(name: "Hardik pandya", age: 33);

}

// positional parameters
void positionalParameters(String name, int age) {
  print("$name is of age $age.");
}

/* optional positional parameters
  []parameters enclosed inside square brackets are optional.
  A default value should be initialised.
*/
void optionalPositionalParameters(String name, int age, [String place = "india"]){
  print("$name is of age $age.He is from $place");
}

/* named parameters
   default value should be specified in the formal parameters. 
*/
void optionalNamedParameters({String name = "unknown", int age = 0}) {
  print("$name is of age $age.");
}

/* named parameters with required values
   default value should be specified in the formal parameters. 
*/
void requiredNamedParameters({required String name, required int age}) {
  print("$name is of age $age.");
}
