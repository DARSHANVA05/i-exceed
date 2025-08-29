import java.io.File;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.BufferedInputStream;
import java.io.FileInputStream;


class BufferedOutputStreamDemo{

	public static void main(String args[]) throws Exception{

		File file = new File("sample.txt");
		
		BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
		
		bufferedOutputStream.write("This is an added message".getBytes());
		bufferedOutputStream.flush();
        	bufferedOutputStream.close();

		BufferedInputStream bin=new BufferedInputStream(new FileInputStream(file));
	        int i=0;
 
		while((i=bin.read())!=-1)
		{
		   System.out.print((char)i);
		}

	}

}