class Car
{
    String model;
    String color;

 
     	Car(String model, String color)
	{
	  this.model = model;
	  this.color = color; 

	
	  displayDetails();		//methods of the same class can be called from the constructor aswell.
	}
 
      	public void displayDetails()
	{	
		//The values of the instance variables can be accessed throught the Car class. 
		System.out.println(model);
		System.out.println(color);	
	}

}
 
 
class ScopeInstanceVariables
{
    public static void main(String as[])
	{
	   Car car1 = new Car("Cadillac Escalade","Black");
	}
  }