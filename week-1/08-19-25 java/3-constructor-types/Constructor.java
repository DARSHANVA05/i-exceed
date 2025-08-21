class Student{

	String name;
	int age;

	Student(){
		//DEFAULT CONSTRUCTOR
		
		System.out.println("=== In default constructor ===");

		this.name = "default value";
		this.age = 10;
		System.out.println(name);
		System.out.println(age);

	} 

	Student(String name, int age){

		//PARAMETERISED CONSTRUCTOR
		System.out.println("=== In parameterised constructor ===");
		System.out.println(name);
		System.out.println(age);
	}

}
class Constructor{

	public static void main(String args[]){
		
		//Invokes default constructor.
		Student studentDefault = new Student();				
		
		//Invokes parameterised constructor.
		Student studentParameterised = new Student("Darshan", 23);	
		
		

	}
}