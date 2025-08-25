class calculate
 {
    public void getTable(int x)
    {
     synchronized (this) {
        	for(var i=1;i<=10;i++)
        	{
            		System.out.println(x*i);
        	}    
        }
       
    }
 }
 
 class SyncDemo{

    public static void main(String args[])
    {
       calculate obj=new calculate();
 
        Thread t1=new Thread(){
         public void run()
         {
              obj.getTable(5);
       
         }
        };
	t1.start();
 	
        new Thread(){
        public void run()
        {
             obj.getTable(7);
       
        }
        }.start(); 
    }
  }
 