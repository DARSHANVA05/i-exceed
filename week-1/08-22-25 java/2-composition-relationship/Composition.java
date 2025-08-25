class Team{

	
	public String clubName;
	public String address;

	Team(String clubName, String address){
		this.clubName = clubName;
		this.address = address;
	}

	public void displayTeam(){
		System.out.println("Club name: "+clubName);
		System.out.println("Address: "+address);
	}

}

class Player{
	
	public String name;
	public int age;

	public Team team;
	
	Player(int age, String name){
		this.team = new Team("BFC", "Bengaluru");
		this.name = name;
		this.age = age;
	}

	public void displayPlayer(){
		System.out.println("Name: "+name);
		System.out.println("Age: "+age);
		team.displayTeam();
	}

}


class Composition{

	public static void main(String args[]){
		
		Player player1 = new Player(40, "Sunil Chetri");
		player1.displayPlayer();
		
		Player player2 = new Player(34, "Miku");
		player2.displayPlayer();

	}

}


