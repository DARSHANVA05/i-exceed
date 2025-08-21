class Student{

	//Instance variables(Scope throught the class)
	String name;	
	int age;

	//Class variables
	static String college = "ABCD";

	Student(String name, int age){
		//The parameters that are passed to method are called formal parameters.(Scope inside this block)
		
		
		//Instance variables needs to be instanciated(assigned).
		this.name = name;
		this.age = age;
		System.out.println(name);
		System.out.println(age);
		
		//Class variables 
		System.out.println(college);
		
	}
}

class Variable{

	public static void main(String args[]){
		
		//Creating an instance of Student class by passing actual parameter.
		Student s1 = new Student("darshan", 23);
	}
}