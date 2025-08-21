class School{					//SUPER CLASS

	StringBuilder schoolName;
	StringBuilder address = new StringBuilder("Bengaluru"); 
	
	School(StringBuilder schoolName){
		this.schoolName = schoolName;
	}

	public String displayClgDetail(Student s){					
		return schoolName+" is located at "+address+ " : "+s.studentName;
	}

	
}

class Student extends School{			//DERIEVED CLASS
	
	StringBuilder studentName;
	int age;

	Student(StringBuilder studentName, int age,  StringBuilder schoolName){
		super(schoolName);
		this.age = age;
		this.studentName = studentName;
	}

	public String displayDetails(){

		//needs to be converted into String from StringBuilder.
		return studentName.toString()+age+" belongs to "+schoolName.toString();	
	}
	
}

class Inheritance{
	
	public static void main(String args[]){
	
		Student student1 = new Student(new StringBuilder("Erling Haaland"),20, new StringBuilder("MCFC"));
		
		//Calling methods from base class and super class
		System.out.println(student1.displayDetails());
		System.out.println(student1.displayClgDetail(student1));

		Student student2 = new Student(new StringBuilder("Tijjani Reinders"),18, new StringBuilder("Chelsea"));
		//Calling methods from base class and super class
		System.out.println(student2.displayDetails());
		System.out.println(student2.displayClgDetail(student2));

	}

}