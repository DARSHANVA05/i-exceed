class Encapsulation{

	private String name;				//Private variable that is accessed by public means

	public void setName(String name){		//setter
		this.name = name;
	}
	
	public String getName(){			//getter
		return name;
	}
	
}


class EncapsulationDemo{

	public static void main(String args[]){
		Encapsulation encapsulation = new Encapsulation();
		encapsulation.setName("Darshan");
		System.out.println(encapsulation.getName());
	}

}