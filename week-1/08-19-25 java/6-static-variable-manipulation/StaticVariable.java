class Student{
	
	//Class variables are stored at the same place in the menory pool, hence the same variable gets updated.
	static int numberOfSeats = 4;			
	
	Student(){
		
		numberOfSeats--;
		
	}
	

}

class StaticVariable{

	public static void main(String args[]){
		
		Student s1 = new Student();
		Student s2 = new Student();
		Student s3 = new Student();
		Student s4 = new Student();

		System.out.println(s1.numberOfSeats);
		System.out.println(s4.numberOfSeats);
	}
}