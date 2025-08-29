import java.io.File;
import java.io.FileInputStream;

class FileInputStreamDemo{

   public static void main(String asd[]) throws Exception

	{ 
	
	    // FileInputStream is used for reading files.

	    FileInputStream fileInputStream = new FileInputStream(new File("sample.txt"));	

	    int i=0;
	    while((i = fileInputStream.read())!=-1)
	    {
		   System.out.print((char)i);
	    }

 	    fileInputStream.close();
	}

}
 