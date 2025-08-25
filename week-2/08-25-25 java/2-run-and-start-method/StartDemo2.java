//Invoking the run method by calling start method in the constructor.

class SampleTask extends Thread{

	SampleTask(){
		System.out.println("In constructor");
		start();				//invoking the run method inside constructor
	}

	public void run(){
		Thread t = Thread.currentThread();		
       		System.out.println("Thread "+t.getName()+" is running...");
	}
}

class StartDemo2{

	public static void main(String args[]){

		SampleTask task1 = new SampleTask();
		SampleTask task2 = new SampleTask();
		SampleTask task3 = new SampleTask();

	}

}