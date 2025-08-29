import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.File;
import java.io.FileInputStream;
 
class ByteArrayDemo{

   	public static void main(String asd[]) throws Exception{

	   String message = "Demo string...";

	   ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
	   byteArrayOutputStream.writeBytes(message.getBytes());
 
	   FileOutputStream file1 = new FileOutputStream(new File("byteArrayFile-1.txt"));
	   FileOutputStream file2 = new FileOutputStream(new File("byteArrayFile-2.txt"));

	   //Used to reuse the data for writing into multiple files.
 
	   byteArrayOutputStream.writeTo(file1);
	   byteArrayOutputStream.writeTo(file2);
 
	   FileInputStream fileInputStream1 = new FileInputStream(new File("byteArrayFile-1.txt"));
	   FileInputStream fileInputStream2 = new FileInputStream(new File("byteArrayFile-2.txt"));

	   int i=0;
	   System.out.println("byteArrayFile-1");
	   while((i = fileInputStream1.read())!=-1)
	   {
		System.out.print((char)i);
	   }

           i=0;
	   System.out.println("\nbyteArrayFile-2");
	   while((i = fileInputStream2.read())!=-1)
	   {
		System.out.print((char)i);
	   }

 
	}

}
 