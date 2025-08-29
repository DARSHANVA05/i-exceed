import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;

class FileOutputStreamDemo{

   public static void main(String asd[]) throws Exception

	{

	    	String message = "Hello world!!!";			
 		File file = new File("C:/training-practice/week-2/08-28-25 java/3-FileOutputStream/sample.txt");
       	    	
		FileOutputStream fileOutputStream = new FileOutputStream(file);		
 		
	    	//Writes into file by converting string to bytes.
		fileOutputStream.write(message.getBytes());
		fileOutputStream.close();
	    
		FileInputStream fileInputStream = new FileInputStream(file);

	        int i=0; 
		while((i = fileInputStream.read())!=-1)
		{
		   System.out.print((char)i);
		}

		fileInputStream.close();
 	    
	}

}
 