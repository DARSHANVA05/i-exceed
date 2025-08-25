class SampleTask extends Thread{

	
	public void run(){
		Thread t = Thread.currentThread();		
       			
		try{
			for(int i=0 ; i<10 ; i++){
				Thread.sleep(1000);
				System.out.println("Thread "+t.getName()+" is running..."+i);
			}
		}
		catch(Exception e){}


	}
}

class JoinDemo{

	public static void main(String args[]) throws InterruptedException{

		SampleTask task1 = new SampleTask();
		SampleTask task2 = new SampleTask();
		SampleTask task3 = new SampleTask();

		task1.start();
		task1.join();		//task2 and task3 waits till the task1 releases the lock.
		task2.start();
		task3.start();
		

	}

}