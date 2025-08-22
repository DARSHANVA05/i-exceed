class NonStaticVariable{

	public int number;

	NonStaticVariable(int number){
		this.number = number;
	}

	public static void staticDisplayNumber(){
		//non-static variable cannot be referenced from a static methods
		// System.out.println("In static method: "+number);
	}
	
	public void displayNumber(){
		//non-static variable can be referenced from a non-static method
		System.out.println("In non-static method: "+number);
	}

	
}

class AccessNonStaticVar{
	
	public static void main(String args[]){
		NonStaticVariable nonStaticVariable = new NonStaticVariable(10);
		nonStaticVariable.staticDisplayNumber();
		nonStaticVariable.displayNumber();

	}

}