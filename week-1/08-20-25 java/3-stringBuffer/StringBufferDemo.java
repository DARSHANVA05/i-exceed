class StringBufferDemo{

	public static void main(String args[]){

		StringBuffer message = new StringBuffer("Welcome ");
		
		//Append
		message.append(" to my home");
		System.out.println(message);
		
		//Insert at a specific index
		message.insert(11, "!");
		System.out.println(message);
		
		//Replace from a specific index
		message.replace(5, 12, " :)");
		System.out.println(message);

		//Delete between specific index
		message.delete(2,4);
		System.out.println(message);
		
		//reverse a StringBuffer
		message.reverse();
		System.out.println(message);
		
		//StringBuffer capacity			
		System.out.println(message.capacity());		
		message.ensureCapacity(25);			
		System.out.println(message.capacity());	

		//Returns the past index of string		
		System.out.println(message.lastIndexOf("ym"));				
	
	}

}