import java.io.File;
import java.io.BufferedInputStream;
import java.io.FileInputStream;


class BufferedInputStreamDemo{

	public static void main(String args[]) throws Exception{

		File file = new File("sample.txt");
		BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));

		int i = 0;
		while((i=bufferedInputStream.read()) != -1){
			System.out.print((char)i);		
		}

	}

}