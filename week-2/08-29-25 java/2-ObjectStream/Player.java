import java.io.Serializable;

class Player implements Serializable{

	private static final long serialVersionUID = 1L;

	String name;
	String teamName;
	int age;
	int jerseyNo;

	Player(String name, String teamName, int age, int jerseyNo){

		this.name = name;
		this.teamName = teamName;
		this.age = age;
		this.jerseyNo = jerseyNo;

	}

	public String toString() {
        	return "Player{name = '" + name + "', team = '" + teamName + "', age = " + age + ", jersey no = " + jerseyNo+ "}";
    	}

}