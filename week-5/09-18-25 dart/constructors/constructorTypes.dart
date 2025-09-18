class DemoClass {
  
  String ?demoString;
  int? number;

  DemoClass({this.demoString, this.number});  
  
  //named constructors with named parameters
  DemoClass.namedConstructorNamedParameters({String ?demoString, int ? number}){
    this.demoString = demoString;
    this.number = number;
  }

//named constructors with named parameters
  DemoClass.namedConstructorPositionalParameters(String ?demoString, int ? number){
    this.demoString = demoString;
    this.number = number;
  }

}

void main() {
  
  DemoClass demoClass1 = DemoClass(demoString:"p1", number: 10);
  print("${demoClass1.demoString}: ${demoClass1.number}");

  DemoClass demoClass2 = DemoClass.namedConstructorNamedParameters(demoString:"p2", number: 11);
  print("${demoClass2.demoString}: ${demoClass2.number}");

  DemoClass demoClass3 = DemoClass.namedConstructorPositionalParameters("p3", 12);
  print("${demoClass3.demoString}: ${demoClass3.number}");

}