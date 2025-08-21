class StringBuilderDemo{

	public static void main(String args[]){

		StringBuilder message = new StringBuilder("Hello");
		
		//Append
		message.append(" World");
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
		
		//reverse a StringBuilder
		message.reverse();
		System.out.println(message);
		
		//StringBuilder capacity			//default capacity is 16
		System.out.println(message.capacity());		//capacity growth is calculated by (initial length * 2)+2
		message.ensureCapacity(25);			//can set the capacity of the StringBuider
		System.out.println(message.capacity());		// capacity = 16 + no of characters
				
	
	}

}