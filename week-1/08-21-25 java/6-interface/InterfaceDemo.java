interface MailService{
	public void sendMail();
}

interface DatabaseService{
	public void saveData();
}

class Orchestrator implements MailService, DatabaseService{

	public void sendMail(){
		System.out.println("Sending mail...");
	}

	public void saveData(){
		System.out.println("Saving data in database...");
	}
	
}


class InterfaceDemo{

	public static void main(String args[]){
		
		Orchestrator orchestrator = new Orchestrator();
		orchestrator.saveData();
		orchestrator.sendMail();
	
	}

}