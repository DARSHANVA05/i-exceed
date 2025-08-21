abstract class HumanInteraction{
	
	//Abstract methods that does not have implementation.
	abstract public String greetPeople();
	abstract public String getLanguage();	

}

class Indian extends HumanInteraction{

	//Concrete methods that have implementation.

	public String greetPeople(){
		return "Greeting in Indian language!";
	}

	public String getLanguage(){
		return "We speak many languages.";
	}
	
}

class Japanese extends HumanInteraction{

	//Concrete methods that have implementation.

	public String greetPeople(){
		return "Greeting in Japanese language!";
	}

	public String getLanguage(){
		return "We speak Japanese.";
	}	

}

class AbstractClass{
	
	public static void main(String args[]){
		
		Indian indian = new Indian();
		System.out.println(indian.getLanguage());
		System.out.println(indian.greetPeople());

		Japanese japanese = new Japanese();
		System.out.println(japanese.getLanguage());
		System.out.println(japanese.greetPeople());
		
	}

}