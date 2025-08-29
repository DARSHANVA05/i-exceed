import java.io.Serializable;
import java.io.*;

class ObjectInputStreamDemo{ 

  public static void main(String asd[]) throws Exception

	{
   		//Used to read objects from the file. Objects are converted into string by using .toString() method

	   	try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream("players.txt"))) {

            		while (true){
                			try{
                    				Player player = (Player) objectInputStream.readObject();
                    				System.out.println(player.toString());
                                 	}catch (EOFException e){
                    			        break;
                			}
	
           		}

       		} catch (Exception  e) {
            		e.printStackTrace();
        	}
	}

}
