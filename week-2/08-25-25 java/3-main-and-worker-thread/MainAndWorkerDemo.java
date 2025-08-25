class Worker extends Thread{

	Worker(){
		System.out.println("In constructor");
		start();				//invoking the run method inside constructor
	}

	public void run(){
		Thread t = Thread.currentThread();
		t.setName("Worker thread");		
		for(int i=0 ; i<5 ; i++){

			try{
				t.sleep(1000);
				System.out.println(t.getName()+" is running...");
			}
			catch(Exception e){
				
			}
			
		}
		
	}
}

class MainAndWorkerDemo{

	public static void main(String args[]){

		Worker task1 = new Worker();

		Thread mainThread = Thread.currentThread();	
		for(int i=0 ; i<5 ; i++){
			try{
				mainThread.sleep(1000);
				System.out.println(mainThread.getName()+" is running...");
			}
			catch(Exception e){
				
			}

		}


	}

}