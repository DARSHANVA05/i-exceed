class Demo{
	
	String name;
	int number;

	static{
		System.out.println("In static block, this block gets executed before the constructor gets invoked");
	}
	
	Demo(String name, int number){
		System.out.println("In Constructor");
		this.name = name;
		this.number = number;
		displayVariables();
	}
	
	public void displayVariables(){
		System.out.println(name);
		System.out.println(number);
	}
	

}

class StaticBlockDemo{
	
	public static void main(String args[]){
		Demo demo = new Demo("test", 10);
	}
	
}