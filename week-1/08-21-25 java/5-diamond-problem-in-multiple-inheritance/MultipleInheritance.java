//This code give an error, as JAVA doesnot support Multiple inheritance

class SuperClass1{

	SuperClass1(){
	}	

	public void sampleMethod(){
		System.out.println("In Super class 1");
	}
}

class SuperClass2{

	SuperClass2(){
	}

	public void sampleMethod(){
		System.out.println("In Super class 2");
	}
}

class DerievedClass extends SuperClass1, SuperClass2{	
	
	//This is not possible. It creates an ambiguity for JVM to call super class constructor as there are 2 super classes
		
	DerievedClass(){
	
	}
	
}


class MultipleInheritance{
		
	public static void main(String args[]){
		
		DerievedClass derievedClass = new DerievedClass();

		//Here JVM will not be able to identify which class's method should be called
		derievedClass.sampleMethod();	
	
	}	

}

