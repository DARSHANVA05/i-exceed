class StaticVariablesDemo{

	public String name;			//instance variables
	public static String staticName;	//static variable

	StaticVariablesDemo(){
		this.name = "name";		//instance variables aswell as static variables can be initialised. 
		staticName = "static name";

		// static int age = 10;		decleration of static variables inside the constructor in not allowed.
	}

	public void displayVariables(){				
		//Both static and non static variables can be accessed by non static methods.

		System.out.println("name: "+name);
		System.out.println("staticName: "+staticName);
	}

}

class Demo{

	public static void main(String args[]){
		StaticVariablesDemo staticVariablesDemo = new StaticVariablesDemo();
		staticVariablesDemo.displayVariables();
	}	

}