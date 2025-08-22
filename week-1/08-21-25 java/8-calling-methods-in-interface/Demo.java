interface MainDB{

	default public void saveData(){
		System.out.println("Main DB saving data...");
	};

}

interface DatabaseService1 extends MainDB{
	default public void saveData(){
		MainDB.super.saveData();
		System.out.println("DB provider 1 saving data...");
	};
}

interface DatabaseService2{
	default public void saveData(){
		System.out.println("DB provider 2 saving data...");
	};
}


class Orchestrator implements DatabaseService1, DatabaseService2{

	public void saveData(){
		DatabaseService1.super.saveData();		//can call methods specific to interface
		DatabaseService2.super.saveData();
	}
	
}


class Demo{

	public static void main(String args[]){
		
		Orchestrator orchestrator = new Orchestrator();
		orchestrator.saveData();
	
	}

}