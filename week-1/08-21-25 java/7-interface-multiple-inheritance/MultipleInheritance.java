interface DatabaseService1{
	public void saveData();
}

interface DatabaseService2{
	public void saveData();
		
}


class Orchestrator implements DatabaseService1, DatabaseService2{

	public void saveData(){
		System.out.println("Saving in DB...");
	}
	
}


class MultipleInheritance{

	public static void main(String args[]){
		
		Orchestrator orchestrator = new Orchestrator();
		orchestrator.saveData();
	
	}

}