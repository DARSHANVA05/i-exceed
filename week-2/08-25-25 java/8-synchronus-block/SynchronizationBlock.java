
class Messenger
 {
    public void sendMessage(String message)		//synchroinzed ensures only one thread can execute a block at a time
    {	
	synchronized(this){
		System.out.print("[");
        	System.out.println(message);
        	System.out.println("]");
	}
	System.out.println("End of message: "+message);
       
    }
}
 
class Caller extends Thread
{
    Messenger target;
    String message;

    Thread thread = Thread.currentThread();

    Caller(Messenger target,String message)
    {
        this.target=target;
        this.message=message;
        start();

	//thread.start();

    }
    public void run()
    {
        target.sendMessage(message);
    }
}
 
 
class SynchronizationBlock
 {
    public static void main(String[] args) {

        Messenger target = new Messenger();

        Caller obj1=new Caller(target,"hi");
        Caller obj2=new Caller(target,"hello");
        Caller obj3=new Caller(target,"hru");
	Caller obj4=new Caller(target,"msg1");
        Caller obj5=new Caller(target,"msg2");
        Caller obj6=new Caller(target,"msg3");

    }
 }
 