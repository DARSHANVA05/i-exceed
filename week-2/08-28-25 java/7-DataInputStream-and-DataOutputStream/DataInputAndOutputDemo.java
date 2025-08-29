import java.io.*;
 
class DataInputAndOutputDemo{

    public static void main(String asd[]) throws Exception

	{

	   DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File("Sampledata.txt")));

	   dataOutputStream.writeInt(12);
	   dataOutputStream.writeBoolean(true);
	   dataOutputStream.writeLong(3243434);
	   //dataOutputStream.writeString("wddw");		string is not a primitive datatype.

	   dataOutputStream.close();
 
	   DataInputStream dataInputStream = new DataInputStream(new FileInputStream(new File("Sampledata.txt")));

	   System.out.println(dataInputStream.readInt());
	   System.out.println(dataInputStream.readBoolean());
	   System.out.println(dataInputStream.readLong());
	   //System.out.println(dataInputStream.readString());	string is not a primitive datatype.
	   	
	   dataInputStream.close();	

	}

}