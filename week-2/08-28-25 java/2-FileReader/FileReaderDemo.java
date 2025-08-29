import java.io.File;
import java.io.FileReader;

class FileReaderDemo{

	public static void main(String args[]) throws Exception{
		
	
		FileReader fileReader = new FileReader(new File("sample.txt"));
		
		int i=0;
		while((i=fileReader.read())!=-1)	//This iterates over each and every character in the file by returning int value.
		{
	    		System.out.print((char)i);	//casting the value from int(ASCII) to char.
		}
		
		fileReader.close();

	
	}

}