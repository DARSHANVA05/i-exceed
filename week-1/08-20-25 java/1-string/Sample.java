class Sample{

	public static void main(String args[]){

		String sampleString = "Hello";
		
		//Returns the length of the string
		System.out.println("sampleString.length(): "+sampleString.length());
		System.out.println("sampleString.isEmpty(): "+sampleString.isEmpty());	
		
		//Converting to uppercase and lowercase
		System.out.println("sampleString.toLowerCase(): "+sampleString.toLowerCase());
		System.out.println("sampleString.toUpperCase(): "+sampleString.toUpperCase());

		//Returning the substring for the string
		System.out.println("sampleString.substring(2, 4): "+sampleString.substring(2, 4));
		System.out.println("sampleString: "+sampleString);

		//Comparing
		System.out.println("sampleString.equal(): "+sampleString.equals("hello"));
		System.out.println("sampleString.equalsIgnoreCase(): "+sampleString.equalsIgnoreCase("Hello"));
		System.out.println("sampleString.compareTo(): "+sampleString.compareTo("he"));
		System.out.println("sampleString.startsWith(): "+sampleString.startsWith("H"));

		//Replacing characters within the string
		System.out.println("sampleString.replace(): "+sampleString.replace("H", "Y"));		
		System.out.println(sampleString);


		
	
	}

}