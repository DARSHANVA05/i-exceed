class StaticVariable{

	public static String staticName;	//static variable

	StaticVariable(){

		staticName = "Erling Haaland";	//initialisation of a static variable is allowed.

		// static int age = 10;		decleration of new static variables inside the constructor in not allowed.
	}

	public void nonStaticMethod(){				
		//Static variables can be accessed by non static methods.
		System.out.println("In non static method: "+staticName);
		staticName = "Kevin De Bruyne";	
	}

	public void staticMethod(){	
		//Static variables can be accessed by static methods.
		System.out.println("In static method: "+staticName);
	}

}

class AccessingStaticVariables{

	public static void main(String args[]){

		StaticVariable staticVariable = new StaticVariable();
		staticVariable.nonStaticMethod();
		staticVariable.staticMethod();

	}	

}