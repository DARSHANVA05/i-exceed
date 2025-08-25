class Resource1 extends Thread{

	public void run(){
		try{
			for(int i=0 ; i<10 ; i++){
				Thread.sleep(1000);		
				System.out.println("Resource 1: "+i);
			}
		}
		catch(Exception e){
		}
	}
}

class Resource2 extends Thread{

	public void run(){
		try{
			for(int i=0 ; i<10 ; i++){
				Thread.sleep(1150);		
				System.out.println("Resource 2: "+i);
			}
		}
		catch(Exception e){
		}
	}
}

class Resource3 extends Thread{

	public void run(){
		try{
			for(int i=0 ; i<10 ; i++){
				Thread.sleep(500);		
				System.out.println("Resource 3: "+i);
			}
		}
		catch(Exception e){
		}
	}
}


class ParallelThreadsDemo{

	public static void main(String args[]){
		
		Resource1 resource1 = new Resource1();
		Resource2 resource2 = new Resource2();		
		Resource3 resource3 = new Resource3();
		

		//All the threads run parallel to one another by resource sharing.
		resource1.start();
		resource2.start();		
		resource3.start();

	}

}