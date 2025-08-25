class Sample extends Thread{

	public void run(){
		try{
			for(int i=0 ; i<10 ; i++){
				Thread.sleep(1000);		//stops the execution of the thread for 1 second.
				System.out.println(i);
			}
		}
		catch(Exception e){
		}
	}

}


class SleepDemo{

	public static void main(String args[]){
		
		Sample sample = new Sample();
		sample.start();

	}

}