class SampleMain{

	public static void main(String args[]){

		//We can call one main method form another main method.
		
		System.out.println("In main method(Calling method)");
		main(10, 20);

	}
	
	public static void main(int a, int b){
		
		System.out.println("In main method(Called method)");
		System.out.println("Sum: "+(a+b));

	}


}