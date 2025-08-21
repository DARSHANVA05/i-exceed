class student
{
    String name;
    int age;

 
     student(String name,int age)
	{
	  this.name=name;
	  this.age=age; 
	  
	}
 
      public void displayStudent()
	{
		//Give the address of the object(hash value)
		System.out.println("student1.displayStudent() ===>"+this);	
	}
}
 
 
class ThisKeyword
{
    public static void main(String as[])
	{
	    student student1 = new student("student 1",25);
           
	    student1.displayStudent();	    
	    System.out.println("student1 ===>"+student1);
	}
  }