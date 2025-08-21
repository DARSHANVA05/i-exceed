//	preference
//1st	--> static block
//2nd	--> InitialisationBlock
//3rd	--> Constructor

class InitialisationBlock
{
    	public static void main(String args[])
	{
	   new InitialisationBlock();
	}

	static{
		System.out.println("In static block");		
	}
 
	InitialisationBlock(){
	   System.out.println("In default constructor");
	}
 
	{				
	   System.out.println("In initialisation block-1");
	}
	{
	   System.out.println("In initialisation block-2");
	} 
	
 
}