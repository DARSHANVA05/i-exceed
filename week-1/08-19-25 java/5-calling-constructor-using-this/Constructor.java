class Student{

	String name;
	int age;

	Student(){

		this("darshan",23);

		//DEFAULT CONSTRUCTOR
		System.out.println("=== In default constructor ===");
		displayDetails();
		
	} 

	Student(String name, int age){
		//PARAMETERISED CONSTRUCTOR
		System.out.println("=== In parameterised constructor ===");
		this.name = name;
		this.age = age;
	}

	public void displayDetails(){
		System.out.println(name);
		System.out.println(age);

	}

}
class Constructor{

	public static void main(String args[]){
		
		//Invokes default constructor.
		Student s1 = new Student();				
		
	}
}