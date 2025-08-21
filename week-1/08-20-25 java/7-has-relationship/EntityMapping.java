class Student
{
    String name,dept;
    int age;
    Address address; // Adderss Entity
    Hobbies hobbies;
 
    Student(String name,int age,String dept,Address ads, Hobbies hobbies)
	{
	  	this.name = name;
	  	this.age = age;
	  	this.dept = dept;
	  	this.address = ads;
	  	this.hobbies = hobbies;
	}
     public void displayStudent()
	{
	   	System.out.println("Name of the student: "+name);
	   	System.out.println("Age: "+age);
	   	System.out.println("City: "+dept);
	   	address.displayAddress();
		hobbies.displayHobbies();
	}
}
 
class EntityMapping
{
   public static void main(String args[])
	{
            Address a1=new Address("WOC Rd","Bangalore",560010);
	    Hobbies hobby = new Hobbies("Football");
	    Student s1=new Student("Darshan",23,"ISE",a1, hobby );
	    s1.displayStudent();
	}
  }