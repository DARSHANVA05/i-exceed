class Sample extends Thread
{
	public void run(){
		Thread t = Thread.currentThread();		
       		System.out.println("Thread "+t.getName()+" is running...");		//thread-0
	}

}
 
class Multithreading
{
    public static void main(String asd[])
    {
       	Sample sampleObj = new Sample();
       	sampleObj.start();

       	Thread t = Thread.currentThread();				
	System.out.println("Thread "+t.getName()+" is running...");			//main thread
     
    }
}
 
//Both the threads main and thread-0 run parallelly.
