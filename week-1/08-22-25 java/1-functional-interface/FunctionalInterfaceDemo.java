@FunctionalInterface
interface Interface1{
	void display();
}

@FunctionalInterface
interface Interface2{
	void display();
}

class FunctionalInterfaceDemo{

	public static void main(String args[]){
		
		new Interface1(){
             		public void display()
             		{
                		System.out.println("Inside the functional interface 1 method");
             		}
	        }.display();


		Interface2 interface2 = ()->{							//lambda function
			System.out.println("Inside the functional interface 2 method");
		};
		interface2.display();



	}

}