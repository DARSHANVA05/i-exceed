interface StaticMethodInterface{

	public static void sampleMethod(){
		System.out.println("In static method");
	}
}

class Main{
	public static void main(String args[]){
		StaticMethodInterface.sampleMethod();
	}
}