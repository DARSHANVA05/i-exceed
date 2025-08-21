class SuperClass{
	
		public void displayMessage(){
			System.out.println("In Super class");
		}

}

class DerievedClass extends SuperClass{
	
	public void displayMessage(){
		System.out.println("In Derieved class");
	}

}

class Polymorphism{

	public static void main(String args[]){

		
		SuperClass class1 = new DerievedClass();
		class1.displayMessage();

		SuperClass class2 = new SuperClass();
		class2.displayMessage();


	}

}