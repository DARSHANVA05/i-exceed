//Invoking the run method by calling start method.

class SampleTask extends Thread{

	SampleTask(){
		
	}

	public void run(){
		Thread t = Thread.currentThread();		
       		System.out.println("Thread "+t.getName()+" is running...");
	}
}

class StartDemo1{

	public static void main(String args[]){

		SampleTask task1 = new SampleTask();
		task1.start();				//invokes the run method for task1

		SampleTask task2 = new SampleTask();
		task2.start();				//invokes the run method for task2

	}

}