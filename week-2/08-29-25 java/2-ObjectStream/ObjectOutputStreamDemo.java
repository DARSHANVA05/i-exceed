import java.io.Serializable;
import java.io.*;

class ObjectOutputStreamDemo{ 

  public static void main(String asd[]) throws Exception

	{

	   //Used to write objects into the file. 

	    Player player1 = new Player("Darshan", "MCFC", 23, 17);
	    Player player2 = new Player("Khusanov", "BFC", 25, 45);
 
	    ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File("players.txt")));
	    objectOutputStream.writeObject(player1);
	    objectOutputStream.writeObject(player2);

	}

}
